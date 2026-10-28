#!/bin/bash

# Script to apply or delete Kubernetes manifests using kubectl
# Supports local file, directory, or remote URL
# Requires env vars:
#   - KUBECONFIG: full kubeconfig content for ovh or null for AWS
#   - CLUSTER_NAME: name of the EKS cluster (only for AWS)
#   - CLOUD_PROVIDER_NAME: "aws" or "ovh"
#   - MANIFEST_PATH: file path, directory path, or HTTP(S) URL

# Error reporting and cleanup on exit
set -euo pipefail
trap 'echo "❌ Error occurred at line $LINENO. Operation: $OPERATION on target $MANIFEST_PATH"; exit 1' ERR
trap 'rm -f /tmp/kubeconfig' EXIT

# Ensure kubectl and aws command is available

required_commands=("kubectl" "aws" "base64")

for cmd in "${required_commands[@]}"; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "❌ $cmd is not installed or not in PATH."
    exit 1
  fi
done

# If CLOUD_PROVIDER_NAME is set to "aws", fetch kubeconfig using AWS CLI, else fetch from KUBECONFIG environment variable

if [[ "${CLOUD_PROVIDER_NAME:-}" == "aws" ]]; then

  if [[ -z "${CLUSTER_NAME:-}" ]]; then
    echo "❌ Missing CLUSTER_NAME."
    exit 1
  fi

  # Fetch kubeconfig from AWS EKS
  echo "🌩️ Fetching kubeconfig from AWS Cloud"
  aws eks update-kubeconfig --name "$CLUSTER_NAME" --kubeconfig /tmp/kubeconfig

  STATUS=$?

  if [[ $STATUS -ne 0 ]]; then
    echo "❌ Failed to fetch kubeconfig for EKS cluster $CLUSTER_NAME"
    exit $STATUS
  fi

  else

  # Check if KUBECONFIG environment variable is set and is not empty or equal to "null"
  if [[ -z "${KUBECONFIG:-}" || "$KUBECONFIG" == "null" ]]; then
    echo "❌ Missing KUBECONFIG environment variable."
    exit 1
  fi

  echo "🌩️ Using kubeconfig from environment variable"
  echo "$KUBECONFIG" | base64 -d > /tmp/kubeconfig

fi

# Check if kubeconfig file exists at /tmp/kubeconfig and is not empty
if [[ ! -f /tmp/kubeconfig || ! -s /tmp/kubeconfig ]]; then
  echo "❌ KUBECONFIG file is missing or empty."
  exit 1
fi

# Assign kubeconfig path to KUBECONFIG variable
KUBECONFIG_PATH="/tmp/kubeconfig"

# Check if MANIFEST_PATH variable is not empty
if [[ -z "${MANIFEST_PATH:-}" ]]; then
  echo "❌ Missing MANIFEST_PATH."
  exit 1
fi

# Check operation type
KUSTOMIZE="${1#--kustomize=}"
ACTION="${2}"

case "$KUSTOMIZE-$ACTION" in
  true-apply)
    OPERATION="apply -k"
    ;;
  true-delete)
    OPERATION="delete -k"
    ;;
  true-create)
    OPERATION="create -k"
    ;;
  false-apply)
    OPERATION="apply -f"
    ;;
  false-delete)
    OPERATION="delete -f"
    ;;
  false-create)
    OPERATION="create -f"
    ;;
  *)
    echo "❌ Invalid arguments. Use --kustomize=true|false and apply|delete|create."
    exit 1
    ;;
esac


echo "🔧 Executing: kubectl $OPERATION"
echo "📦 Manifest path: $MANIFEST_PATH"

export KUBECONFIG=$KUBECONFIG_PATH

# Apply or delete based on path type
if [[ "$MANIFEST_PATH" =~ ^https?:// ]]; then
  echo "🌐 Detected remote URL."
  kubectl $OPERATION "$MANIFEST_PATH"
  STATUS=$?

elif [[ -d "$MANIFEST_PATH" ]]; then
  echo "📁 Detected directory of manifests."
  kubectl $OPERATION "$MANIFEST_PATH"
  STATUS=$?

elif [[ -f "$MANIFEST_PATH" ]]; then
  echo "📄 Detected single manifest file."
  kubectl $OPERATION "$MANIFEST_PATH"
  STATUS=$?

else
  echo "❌ $MANIFEST_PATH is not a valid file, directory, or URL."
  exit 1
fi

# Check result
if [[ $STATUS -eq 0 ]]; then
  echo "✅ kubectl $OPERATION succeeded on $MANIFEST_PATH"
else
  echo "❌ kubectl $OPERATION failed on $MANIFEST_PATH"
  exit $STATUS
fi
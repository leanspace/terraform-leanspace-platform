# Leanspace platform Terraform modules

Terraform modules used to deploy the Leanspace platform on AWS and OVHcloud.
Published from Leanspace's internal repository; every version is one consistent snapshot of all
modules below.

```hcl
module "eks_cluster" {
  source  = "leanspace/platform/leanspace//aws/eks/cluster"
  version = "0.1.0"
}
```

Each GitHub Release also carries `release-manifest.json` and `.terraform.lock.hcl`, which pin the
exact provider versions tested with that release.

## Modules

| Module | Source |
|---|---|
| `auth` | `leanspace/platform/leanspace//auth` |
| `aws/acm` | `leanspace/platform/leanspace//aws/acm` |
| `aws/database` | `leanspace/platform/leanspace//aws/database` |
| `aws/eks/addons` | `leanspace/platform/leanspace//aws/eks/addons` |
| `aws/eks/cluster` | `leanspace/platform/leanspace//aws/eks/cluster` |
| `aws/eks/logs` | `leanspace/platform/leanspace//aws/eks/logs` |
| `aws/eks/node-group` | `leanspace/platform/leanspace//aws/eks/node-group` |
| `aws/iam/irsa-role` | `leanspace/platform/leanspace//aws/iam/irsa-role` |
| `aws/kms` | `leanspace/platform/leanspace//aws/kms` |
| `aws/networking/vpc` | `leanspace/platform/leanspace//aws/networking/vpc` |
| `aws/networking/vpc-endpoints` | `leanspace/platform/leanspace//aws/networking/vpc-endpoints` |
| `aws/networking/vpc-flow-logs` | `leanspace/platform/leanspace//aws/networking/vpc-flow-logs` |
| `aws/networking/vpc-lattice` | `leanspace/platform/leanspace//aws/networking/vpc-lattice` |
| `aws/opensearch` | `leanspace/platform/leanspace//aws/opensearch` |
| `aws/s3/bucket` | `leanspace/platform/leanspace//aws/s3/bucket` |
| `kubernetes/helm` | `leanspace/platform/leanspace//kubernetes/helm` |
| `kubernetes/kubectl` | `leanspace/platform/leanspace//kubernetes/kubectl` |
| `kubernetes/manifests` | `leanspace/platform/leanspace//kubernetes/manifests` |
| `ovh/database` | `leanspace/platform/leanspace//ovh/database` |
| `ovh/mks/cluster` | `leanspace/platform/leanspace//ovh/mks/cluster` |
| `ovh/mks/node-pool` | `leanspace/platform/leanspace//ovh/mks/node-pool` |
| `ovh/networking` | `leanspace/platform/leanspace//ovh/networking` |
| `ovh/ocr` | `leanspace/platform/leanspace//ovh/ocr` |
| `ovh/opensearch` | `leanspace/platform/leanspace//ovh/opensearch` |
| `vault` | `leanspace/platform/leanspace//vault` |

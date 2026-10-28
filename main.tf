# Root module required by the Terraform Registry. It creates nothing: use the modules in the
# subdirectories, e.g. source = "leanspace/platform/leanspace//aws/eks/cluster".
terraform {
  required_version = ">= 1.0"
}

resource "aws_eks_addon" "addon" {
  cluster_name  = var.cluster_name
  addon_name    = var.addon_name
  addon_version = var.addon_version
  preserve      = true
  tags          = var.tags
}

provider "kubernetes" {
  host                   = module.eks_cluster.endpoint
  token                  = data.aws_eks_cluster_auth.kubernetes.token
  cluster_ca_certificate = base64decode(module.eks_cluster.cluster_ca_certificate)
  config_path            = var.eks_cluster_name
}
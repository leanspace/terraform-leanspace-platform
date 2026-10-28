module "eks_cluster" {

  source  = "terraform-aws-modules/eks/aws"
  version = "20.35.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  cluster_enabled_log_types = var.eks_log_types

  cluster_endpoint_private_access          = false
  cluster_endpoint_public_access           = true
  cluster_endpoint_public_access_cidrs     = var.eks_public_access_cidrs
  enable_cluster_creator_admin_permissions = true

  create_cluster_security_group = true

  cluster_ip_family = "ipv4"

  cluster_addons = {
    kube-proxy             = var.kube_proxy_addon_version
    vpc-cni                = var.vpc_cni_addon_version
    eks-pod-identity-agent = var.eks_pod_identity_agent_addon_version
  }

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  node_security_group_tags = var.node_security_group_tags

  tags = var.tags
}
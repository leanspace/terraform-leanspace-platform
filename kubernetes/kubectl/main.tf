resource "null_resource" "script_runner" {
  provisioner "local-exec" {
    when    = create
    command = <<-EOT
      set -e

      PROFILE_ARG=""
      if [ "${self.triggers.aws_profile}" != "" ]; then
        PROFILE_ARG="--profile ${self.triggers.aws_profile}"
      fi

      if [ "${self.triggers.eks_cluster_name}" != "" ]; then
        aws eks update-kubeconfig --name ${self.triggers.eks_cluster_name} --region ${self.triggers.region} $PROFILE_ARG
      fi

      chmod +x ${self.triggers.script_path}
      ${self.triggers.script_path}
    EOT
  }

  provisioner "local-exec" {
    when    = destroy
    command = <<-EOT
      set -e

      PROFILE_ARG=""
      if [ "${self.triggers.aws_profile}" != "" ]; then
        PROFILE_ARG="--profile ${self.triggers.aws_profile}"
      fi

      if [ "${self.triggers.eks_cluster_name}" != "" ]; then
        aws eks update-kubeconfig --name ${self.triggers.eks_cluster_name} --region ${self.triggers.region} $PROFILE_ARG
      fi

      chmod +x ${self.triggers.script_path}
      ${self.triggers.script_path} --delete
    EOT
  }

  triggers = {
    eks_cluster_name = var.eks_cluster_name
    region           = var.region
    script_path      = var.script_path
    aws_profile      = var.aws_profile
  }
}

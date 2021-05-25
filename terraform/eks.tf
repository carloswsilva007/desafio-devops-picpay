module "desafio_devops_picpay_eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name                          = var.eks_name
  cluster_version                       = var.eks_version
  subnets                               = data.aws_subnet_ids.public.ids
  vpc_id                                = data.aws_vpc.picpay.id
  cluster_endpoint_private_access       = true
  cluster_endpoint_public_access        = false
  cluster_enabled_log_types             = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  write_kubeconfig                      = false

  cluster_encryption_config = [
    {
      provider_key_arn = aws_kms_key.kubernetes.arn
      resources        = ["secrets"]
    }
  ]

  node_groups_defaults = {
    ami_type  = "AL2_x86_64"
    disk_size = 20
  }

  node_groups = {
    picpayprod = {
      name         = "picpayprod"
      max_capacity = 5
      min_capacity = 1
      subnets      = data.aws_subnet_ids.private.ids

      instance_types = [var.eks_instance_type]

      additional_tags = {
        "k8s.io/cluster-autoscaler/${var.eks_name}" = "owned"
        "k8s.io/cluster-autoscaler/enabled"         = "true"
      }
    }
  }
}

resource "aws_kms_key" "kubernetes" {
  description         = "Chave para o cluster de Kubernetes"
  enable_key_rotation = true

}

data "aws_availability_zones" "azs" {}


data "aws_eks_cluster" "cluster_data" {
  name = module.eks.cluster_name
}

data "aws_eks_cluster_auth" "cluster_auth_data" {
  name = module.eks.cluster_name
  depends_on = [ module.eks
]
}
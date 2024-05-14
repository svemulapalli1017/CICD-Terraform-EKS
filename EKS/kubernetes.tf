provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster_data.endpoint
  token                  = data.aws_eks_cluster_auth.cluster_auth_data.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}
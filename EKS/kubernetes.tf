provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster_main.endpoint
  token                  = data.aws_eks_cluster_auth.cluster_auth_main.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster_main.certificate_authority.0.data)
}
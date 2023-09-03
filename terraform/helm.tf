#depends_on = [module.eks.aws_eks_cluster.this[0]]
provider "helm" {
  #depends_on = [module.eks.aws_eks_cluster.this[0]]
  wait = true  
  kubernetes {
    host                   = aws_eks_cluster.my-cluster.endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.my-cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.my-cluster.token
    load_config_file      = false
  }
}
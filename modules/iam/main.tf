# To use IAM roles for service accounts, an IAM OIDC provider must exist for your cluster.

#data "terraform_remote_state" "identity-oidc-issuer" {


data "tls_certificate" "eks" {
  url = var.oidc_url
}

resource "aws_iam_openid_connect_provider" "connect" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
  url             = var.oidc_url //oidc
}
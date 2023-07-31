resource "vault_kubernetes_secret_backend" "config" {
  path                      = var.path
  description               = "kubernetes secrets engine"
  default_lease_ttl_seconds = var.token_ttl
  max_lease_ttl_seconds     = var.max_timeout
  kubernetes_host           = var.kubernetes_host
  kubernetes_ca_cert        = var.kubernetes_ca_cert
}

resource "vault_kubernetes_secret_backend_role" "backend-role" {
  backend                       = vault_kubernetes_secret_backend.config.path
  name                          = var.role_name
  allowed_kubernetes_namespaces = var.k8_namespaces
  token_max_ttl                 = var.max_timeout
  token_default_ttl             = var.token_ttl
  service_account_name          = var.k8_service_accounts
}
resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = var.path
}

resource "vault_kubernetes_auth_backend_config" "example" {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = var.kubernetes_host
}

resource "vault_kubernetes_auth_backend_role" "example" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = var.role_name
  bound_service_account_names      = var.k8_service_accounts
  bound_service_account_namespaces = var.k8_namespaces
  token_ttl                        = var.token_ttl
}
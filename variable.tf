variable "kubernetes_host" {
  type        = string
  description = "Enter Kubernetes host URL."
}

variable "role_name" {
  type        = string
  description = "Enter a role name"
}

variable "path" {
  type        = string
  description = "Unique name of the kubernetes backend to configure"
}

variable "token_ttl" {
  type        = string
  description = <<-EOT
  The maximum lifetime for generated tokens in number of seconds. 
  Its current value will be referenced at renewal time.
  EOT
}

variable "k8_service_accounts" {
  type        = list(string)
  description = "list of K8 user service accounts"
}

variable "k8_namespaces" {
  type        = list(string)
  description = "The list K8 namespace that should be accessible by the K8 user service account"
}

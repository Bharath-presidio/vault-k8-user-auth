kubernetes_host     = "<cluster_url>"
role_name           = "app-role"
path                = "kube-test-2"
token_ttl           = "3600"
max_timeout         = "7200"
k8_service_accounts = "sample-app" #list of K8 user service accounts
k8_namespaces       = ["demo"] #The list K8 namespace that should be accessible by the K8 user service account
kubernetes_ca_cert = "<ca-cert>"
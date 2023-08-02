kubernetes_host     = "https://FCCEFA2717C26B30E8A171B652629323.gr7.us-east-1.eks.amazonaws.com"
role_name           = "app-role"
path                = "kube-test-4"
token_ttl           = "3600"
max_timeout         = "7200"
k8_service_accounts = ["sample-app","test"] #list of K8 user service accounts
k8_namespaces       = ["demo"] #The list K8 namespace that should be accessible by the K8 user service account
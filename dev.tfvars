kubernetes_host     = "http://example.com:443"
role_name           = "test"
path                = "test-replication/test-k8-auth"
token_ttl           = "3600"
k8_service_accounts = ["test"] #list of K8 user service accounts
k8_namespaces       = ["test"] #The list K8 namespace that should be accessible by the K8 user service account

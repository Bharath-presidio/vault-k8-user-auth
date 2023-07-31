terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "3.17.0"
    }
  }
}

provider "vault" {
  address = "https://vault-cluster-testing-public-vault-dd375900.e81504c7.z1.hashicorp.cloud:8200"
  namespace    = "admin"
}

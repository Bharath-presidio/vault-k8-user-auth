terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "3.17.0"
    }
  }
}

provider "vault" {
  address = "https://wex-vault-ue1-private-vault-84dfb1f8.eadef17c.z1.hashicorp.cloud:8200"
  namespace    = "admin"
}

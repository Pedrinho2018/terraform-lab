terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "primeiro" {
  filename = "${path.module}/primeiro.txt"
  content  = "Meu primeiro arquivo com Terraform 🚀"
}


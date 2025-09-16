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
  content  = var.mensagem1
  filename = "${path.module}/primeiro.txt"
}

resource "local_file" "segundo" {
  content  = var.mensagem2
  filename = "${path.module}/segundo.txt"
}


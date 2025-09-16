terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "com_variavel" {
  filename = var.nome_arquivo
  content  = var.conteudo_arquivo
}

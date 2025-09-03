terraform {
  required_version = ">= 1.0"
}

provider "local" {}

resource "null_resource" "example" {
  triggers = {
    timestamp = timestamp()
  }
  provisioner "local-exec" {
    command = "echo Simulated infra change: ${self.triggers.timestamp} > ./terraform/last_apply.txt"
  }
}

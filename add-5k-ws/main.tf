# make sure var file is passed in CLI:
# terraform apply -var-file="terraform.tfvars"

terraform {
    required_providers {
        scalr = {
            source  = "registry.scalr.io/scalr/scalr"
            version = "1.0.0-rc36"
        }
    }
}

provider scalr {
  hostname = var.hostname
  token    = var.api_token
}

resource "scalr_workspace" "ws" {
  count = 4990
  name            = "ws1-${count.index}"
  environment_id  = "env-svrcnchebt61e30"
}
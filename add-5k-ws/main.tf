
terraform {
  backend "remote" {
    hostname = "7c918c1068d4.test-env.scalr.com"
    organization = "env-svrcnchebt61e30"

    workspaces {
      name = "ws4"
    }
  }
}

provider scalr {
  hostname = var.hostname
  token    = var.api_token
}

resource "scalr_workspace" "ws" {
  count = 5000
  name            = "ws1-${count.index}"
  environment_id  = "env-u8s912p8ttvked8"
}
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
  count = 5000
  name            = "ws1-${count.index}"
  environment_id  = "env-u8s912p8ttvked8"
}
terraform {
    required_providers {
        scalr = {
            source  = "registry.scalr.io/scalr/scalr"
            version = "1.0.0-rc36"
        }
    }
}

provider "scalr" {
  hostname = "mainiacp.org11.te.scalr-labs.net"
  token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdTdraTMwNDE4YTBuYmRvIn0.1oVV1teQDmc9YS-ltOfpxGMwcVdxUHklnf6aeMTJ1l8"
}

resource "scalr_workspace" "example" {
  name           = "ws-dev-test1"
  environment_id = "env-svrcnchebt61e30"
}

resource "scalr_variable" "example" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = scalr_workspace.example.id
}
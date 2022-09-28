terraform {
    required_providers {
        scalr = {
            source  = "registry.scalr.io/scalr/scalr"
            version = "1.0.0-rc36"
        }
    }
}

provider "scalr" {
  hostname = "f85819bbeed4.test-env.scalr.com"
  token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdGs5djl0bWQ0cXJyZXI4In0.D4KVEOcGcNPjaGCcDgp2t82TPMa7Pj4gqFxCKUVqu3k"
}

resource "scalr_workspace" "example" {
  name           = "ws-test-provider"
  environment_id = "env-svrcnchebt61e30"
}

resource "scalr_variable" "example" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = scalr_workspace.example.id
}
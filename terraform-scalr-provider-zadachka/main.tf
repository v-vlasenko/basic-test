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

data {
  account_id = "acc-svrcncgh453bi8g" 
  name = "tfenv1"
}

resource "scalr_vcs_provider" "test_vcs" {
  name        ="vlad-vcs-testq"
  account_id  = data.scalr_environment.test_env.account_id
  vcs_type    ="github"
  token       = var.github_token
}

resource {
  name            = "vlad-policy-testq"
  opa_version     = "0.29.4"
  account_id      = data.scalr_environment.test_env.account_id
  vcs_provider_id = scalr_vcs_provider.test_vcs.id
  vcs_repo {
    identifier = "v-vlasenko/basic-test"
    path       = "policy"
    branch     = "master"
  }
}

resource "scalr_policy_group_linkage" "vlad_link" {
  environment_id  = data.scalr_environment.test_env.id
  depends_on      = [scalr_policy_group.test_policy]
  policy_group_id = scalr_policy_group.test_policy.id
}

resource "scalr_workspace" "vlad_ws" {
  name              = "vlad-ws-testq"
  environment_id    = data.scalr_environment.test_env.id
  vcs_provider_id   = scalr_vcs_provider.test_vcs.id
  working_directory = "pet-count"

  vcs_repo {
      identifier    = "v-vlasenko/basic-test"
      branch        = "master"
  }
}

# make sure var file is passed in CLI
# terraform apply -var-file="testing.tfvars"

provider scalr {
  hostname = var.hostname
  token    = var.api_token
}

terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "1.0.0-rc36"
        }
    }
}

data "scalr_environment" "test_env" {
  account_id = "acc-svrcncgh453bi8g" # mandatory if a user has access to a few accounts and the environment name is not unique
  name = "tfenv1"  # optional, can only use id or name for the environment filter, if both are used there will be a conflict.
}

resource "scalr_vcs_provider" "test_vcs" {
  name="vlad-vcs"
  account_id = data.scalr_environment.test_env.account_id
  vcs_type="github"
  token= var.github_token
}

resource "scalr_policy_group" "test_policy" {
  name            = "vlad-policy"
  opa_version     = "0.29.4"
  account_id      = data.scalr_environment.test_env.account_id
  vcs_provider_id = scalr_vcs_provider.test_vcs.id
  vcs_repo {
    identifier = "v-vlasenko/basic-test"
    path       = "policy"
    branch     = "master"
  }
}

resource "scalr_environment" "vlad_env" {
  name       = data.scalr_environment.test_env.name
  account_id = test_env.account_id
  policy_groups = scalr_policy_group.test_policy.id
}

resource "scalr_workspace" "vlad_ws" {
  name            = "vlad-ws111"
  environment_id  = data.scalr_environment.test_env.id
  vcs_provider_id = data.scalr_vcs_provider.test_vcs.id

  working_directory = "pet-count"

  vcs_repo {
      identifier          = "v-vlasenko/basic-test"
      branch              = "master"
  }
}
output "vcs_name" {
  value = scalr_vcs_provider.test_vcs.name
}

output "vcs_id" {
  value = scalr_vcs_provider.test_vcs.id
}

output "policy_name" {
  value = scalr_policy_group.test_policy.name
}

output "policy_id" {
  value = scalr_policy_group.test_policy.id
}

output "ws_name" {
  value = scalr_workspace.vlad_ws.name
}

output "ws_id" {
  value = scalr_workspace.vlad_ws.id
}

output "env_name" {
  value = scalr_workspace.vlad_ws.name
}

output "env_id" {
  value = scalr_workspace.vlad_ws.id
}

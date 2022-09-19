version = "v1"


policy "workspace_name" {
  enabled           = true
  enforcement_level = "soft-mandatory"
}


policy "random_decision" {
  enabled           = true
  enforcement_level = "advisory"
}


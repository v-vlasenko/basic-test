resource "random_pet" "pet" {
  count = 9
  keepers = {
    # Generate a new pet name each time
    name = "Vlad"
  }
}

variable "boolean" {
  default = true
  sensitive = false
}

variable "number" {
  default = 12
  sensitive = false
}

variable "float" {
  default = 15.55
  sensitive = false
}

variable "null" {
  default = null
  sensitive = true
}

variable "list" {
  default = ["322", true, 15.22]
  sensitive = false
}

variable "map" {
  default = {
    key1 = "map value 1"
    key2 = "map value 2"
  }
  sensitive = false
}

variable "object" {
  default = {
    ob_1 = true
    ob_2 = "stringObjectValue"
  }
  sensitive = false
}

resource "null_resource" "test" {
  triggers = {
    trigger = var.null
  }
}

output "var_map_key_1" {
  value = var.map.key1
  sensitive = false
}

output "var_map_key_2" {
  value = var.map.key2
  sensitive = false
}

output "var_map" {
  value = var.map
  sensitive = false
}

output "var_obj" {
  value = var.object
}

output "CAPITALIZED_OUTPUT" {
  value = "BIG LETTERS ARE GOOD"
}

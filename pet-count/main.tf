resource "random_pet" "pet" {
  count = 2
  keepers = {
    # Generate a new pet name each time
    name = "Vlady"
  }
}

variable "boolean" {
  default = true
  sensitive = true
}

variable "float" {
  default = 0.1
  sensitive = true
}

# variable "float" {
#   default = 15.55
#   sensitive = true
# }

# variable "float1" {
#   default = 15.55
#   sensitive = true
# }

# variable "float2" {
#   default = 15.55
#   sensitive = true
# }

# variable "float3" {
#   default = 15.55
#   sensitive = true
# }

# variable "float4" {
#   default = 15.55
#   sensitive = true
# }

# variable "float5" {
#   default = 15.55
#   sensitive = true
# }

# variable "null" {
#   default = null
#   sensitive = true
# }

# variable "list" {
#   default = ["322", true, 15.22]
#   sensitive = true
# }

# variable "map" {
#   default = {
#     key1 = "map value 1"
#     key2 = "map value 2"
#   }
#   sensitive = false
# }

# variable "object" {
#   default = {
#     ob_1 = true
#     ob_2 = "stringObjectValue"
#   }
#   sensitive = true
# }

# resource "null_resource" "test" {
#   triggers = {
#     trigger = var.null
#   }
# }

# output "var_map_key_1" {
#   value = var.map.key1
#   sensitive = true
# }

# output "var_map_key_2" {
#   value = var.map.key2
#   sensitive = true
# }

# output "var_map" {
#   value = var.map
#   sensitive = true
# }

# output "var_obj" {
#   value = var.object
#   sensitive = true
# }

# output "CAPITALIZED_OUTPUT" {
#   value = "BIG LETTERS ARE GOOD"
#   sensitive = true
# }

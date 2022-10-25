resource "random_pet" "pet" {
  count = 10
  keepers = {
    # Generate a new pet name each time
    name = "Vlad"
  }
}

# output "very_long" {
#   value = "Lorem dfipsusdm dolor sit ameывt, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"  
# }

# output "senc_out" {
#   value = "secret data"
#   description = "my sensitive output"
#   sensitive = true
# }

# output "pets" {
#   value = random_pet.pet[*].id
# }

# output "pet_keeper" {
#   value = random_pet.pet[0].keepers.name
# }

# variable "string" {
#   type = string
#   default = "stringValue"
# }

# variable "boolean" {
#   type = bool
#   default = false
# }

# variable "number" {
#   type = number
#   default = 12
# }

# variable "float" {
#   type = number
#   default = 15.55
# }

# # variable "null" {
# #   type = null
# #   default = null
# # }

# variable "list" {
#   type = list
#   default = ["322", true, 15.22]
# }

# variable "map" {
#   type = map
#   default = {
#     key1 = "value 1"
#     key2 = "value 2"
#   }
# }

# variable "object" {
#   type = object ({
#     ob_1 = bool
#     ob_2 = string
#   })
#   default = {
#     ob_1 = true
#     ob_2 = "stringObjectValue"
#   }
# }

# resource "null_resource" "test" {
#   triggers = {
#     trigger = "1"
#   }
# }

# output "var_map_key_1" {
#   value = var.map.key1
# }

# output "var_map_key_2" {
#   value = var.map.key2
# }

# output "var_map" {
#   value = var.map
# }

# output "CAPITALIZED_OUTPUT" {
#   value = "BIG LETTERS ARE GOOD"
# }

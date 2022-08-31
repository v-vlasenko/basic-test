resource "random_pet" "pet" {
  count = 10
  keepers = {
    # Generate a new pet name each time
    timestamp = timestamp()
  }
}

output "very_long" {
  value = "Lorem dfipsusdm dolor sit ameывt, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"  
}

output "senc_out" {
  value = "secret data"
  description = "my sensitive output"
  sensitive = true
}

output "pet_names" {
  value1 = random_pet.pet[1].id
  value2 = random_pet.pet[2].id
  value3 = random_pet.pet[3].id
  value4 = random_pet.pet[4].id
  value5 = random_pet.pet[5].id
  value6 = random_pet.pet[6].id
  value7 = random_pet.pet[7].id
  value8 = random_pet.pet[8].id
  value9 = random_pet.pet[9].id
  value10 = random_pet.pet[10].id
}

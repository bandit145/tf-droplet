variable "do_token" {
  type = string
  description = "do api token"
}

provider "digitalocean" {
  token = var.do_token
}


resource "digitalocean_vpc" "test_vpc" {
  region = "nyc1"
  name = "tf-droplet-test-vpc"
  
}


module "droplet" {
  source = "../../tf-droplet"
  do_token = var.do_token
  name = "tf-droplet-test"
  image = "centos-8-x64"
  size = "s-1vcpu-1gb"
  tags = ["test"]
  region = "nyc1"
  vpc = digitalocean_vpc.test_vpc.name
  user_data = file("user_data.yml")
  num = 2
}


output "droplet_ipv4" {
  value = module.droplet.droplet_ipv4
}

output "droplet_ipv6" {
  value = module.droplet.droplet_ipv6
}

output "droplet_ipv4_address_private" {
  value = module.droplet.droplet_ipv4_address_private
}

output "droplet_names" {
  value = module.droplet.droplet_names
}
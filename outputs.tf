output "droplet_ipv4" {
  value = digitalocean_droplet.droplet.*.ipv4_address
}

output "droplet_ipv6" {
  value = digitalocean_droplet.droplet.*.ipv6_address
}

output "droplet_ipv4_address_private" {
  value = digitalocean_droplet.droplet.*.ipv4_address_private
}

output "droplet_names" {
  value = digitalocean_droplet.droplet.*.name
}
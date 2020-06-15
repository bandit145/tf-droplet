provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_vpc" "vpc" {
  name = var.vpc
}

resource "digitalocean_droplet" "droplet" {
  count = var.num
  image = var.image
  region = var.region
  size = var.size
  name = join("-", [var.name, count.index + 1])
  ipv6 = var.ipv6
  vpc_uuid = data.digitalocean_vpc.vpc.id
  monitoring = var.monitoring
  backups = var.backups
  private_networking = var.private_networking
  resize_disk = var.resize_disk
  tags = var.tags
  user_data = join("\n", ["#cloud-config",var.user_data])
}

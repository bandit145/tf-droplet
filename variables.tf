variable "do_token" {
  type = string
  description = "do api token"
}

variable "num" {
  type = number
  description = "number of droplets"
}

variable "image" {
  type = string
  description = "droplet image"
}

variable "region" {
  type = string
  description = "region"
}

variable "vpc" {
  type = string
  description = "vpc name"
  default = null
}

variable "tags" {
  type = list
  description = "droplet tags"
  default = []
}

variable "user_data" {
  type = string
  description = "user_data"
  default = ""
}

variable "size" {
  type = string
  description = "size of droplet"
}

variable "ipv6" {
  type = bool
  description = "ipv6 enabled"
  default = true
}

variable "private_networking" {
  type = bool
  description = "private networking enabled"
  default  = false
}

variable "resize_disk" {
  type = bool
  description = "wether to allowe disk resize or not"
  default = true
}

variable "name" {
  type = string
  description = "name of droplet"
}

variable "backups" {
  type = bool
  description = "backups enabled"
  default = false
}

variable "monitoring" {
  type = bool
  description = "monitoring enabled"
  default = true
}
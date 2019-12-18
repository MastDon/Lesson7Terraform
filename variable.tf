variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "instance_name" {
  type = string
  default = "Ubuntu"
}
variable "group_name" {
  type = string
  default = "DevPro"
}

variable "availability_zone" {
  type = string
  default = "eu-north-1c"
}


variable "ami_ubuntu" {
  type = string
  default = "ami-1dab2163"
}

variable "witelist" {
  description = "Set ip for access"
  type = string
  default = "176.241.136.147/32"
}
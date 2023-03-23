variable "vpc_name" {
  type = string
  default = "sz_test_vpc"
}

variable "vpc_cidr" {
  type = string
  default = "172.16.0.0/20"
}

variable "vsw_cidr" {
  type = string
  default = "172.16.1.0/24"
}

variable "vsw_zone" {
  type = string
  default = "cn-shenzhen-f"
}
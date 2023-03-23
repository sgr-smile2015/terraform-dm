terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.201.2"
    }
  }
}

provider "alicloud" {
  profile = "akProfile"
}

resource "alicloud_vpc" "this" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr
}

resource "alicloud_vswitch" "this" {
  vpc_id     = alicloud_vpc.this.id
  cidr_block = var.vsw_cidr
  zone_id    = var.vsw_zone
}
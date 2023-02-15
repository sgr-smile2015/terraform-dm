terraform {
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.198.0"
    }
  }
}

provider "alicloud" {
  profile = "akProfile"
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = "tf_test_foo"
  cidr_block = "172.16.0.0/12"
}
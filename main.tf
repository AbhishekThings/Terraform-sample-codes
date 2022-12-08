provider "aws" {
region = "us-east-1"
access_key = "proivde your user access key here"
secret_key = "Provide your user secret key here"
}

resource "aws_instance" "one" {
ami = "ami-0b0dcb5067f052a63"
instance_type = var.abc
tags = {
Name = "Linux Server"
Environment = "dev"
}
}

resource "aws_instance" "two" {
ami = "ami-0574da719dca65348"
instance_type = var.xyz
tags = {
Name = "ubuntu Server"
Environment = "test"
}
}

variable "abc" {
description = "Hi this is my linux server"
type = string
default = "t2.micro"
}
variable "xyz" {
description = "Hi this is my ubuntu server"
type = string
default = "t2.micro"
}

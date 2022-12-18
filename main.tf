provider "aws" {
    region = "eu-west-2"
}

variable "name" {
    description = "dev-machine-mid"
}

data "aws_security_group" "common_sg" {
  id = "sg-03bd1682216cd87ba"
}

resource "aws_instance" "dev_machine" {
    # Ubuntu 20.04 - eu-west-2
    ami = "ami-035469b606478d63d"
    instance_type = "t2.xlarge"
    key_name = "home_dev_network"
    vpc_security_group_ids = [data.aws_security_group.common_sg.id]
}
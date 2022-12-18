provider "aws" {
    region = "eu-west-2"
}

data "aws_security_group" "common_sg" {
  id = "sg-03bd1682216cd87ba"
}

resource "aws_instance" "dev_machine" {
    # Ubuntu 20.04 - eu-west-2
    ami                         = "ami-035469b606478d63d"
    instance_type               = "t2.xlarge"
    key_name                    = "home_dev_network"
    vpc_security_group_ids      = [data.aws_security_group.common_sg.id]
    associate_public_ip_address = true
    

    # root disk
    root_block_device {
        volume_size           = "20"
        volume_type           = "gp2"
        encrypted             = true
        delete_on_termination = true
    }
}
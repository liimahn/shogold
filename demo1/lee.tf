# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "demo" {
  name              = "my-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "nano_1_0"
  key_pair_name     = "cent"
  tags = {
    name = "utrains devops"
    env  = "dev"
    owner = "lee"
  }
}

resource "aws_iam_group" "group1" {
  name = "terraform"  
}

resource "aws_iam_user" "demo-user" {
  name = "prof"
}


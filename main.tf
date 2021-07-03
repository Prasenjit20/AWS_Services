provider "aws" {
  region = var.aws_region
}

#Code to create EC2 
resource "aws_instance" "myFirstInstance" {
  ami           = "ami-011c99152163a87ae"
  key_name = var.key_name
  instance_type = var.instance_type
  #security_groups= ["Public 1 SG"] (Need to check why not working)
  count = 1
  tags= {
    Name = "terraform instance"
  }
}


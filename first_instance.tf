provider "aws" {
  region = "us-east-1"
  #access_key = "" Already configured SHELL with Access Keys
  #secret_key = ""
}
resource "aws_instance" "Intro" {
    ami = "ami-0427090fd1714168b"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "Terraform-key"
    vpc_security_group_ids = [ "sg-080bc65758bbdba6c" ]
    tags = {
        Name = "Dove-Instance"
    }
  
}
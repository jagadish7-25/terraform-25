resource "aws_instance" "latest" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "var.instance"

  tags = {
    Name = "var.name"
  }
}

  variable "instance" {
    default = t2.micro
    
  }

  variable "name" {
    default = jack-1
    
  }
variable "components" {
  default = ["frontend", "mongo"]
}

resource "aws_instance" "instance" {

  count = lenght(var.components)

  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-09c956a01686bdc1d" ]

  tags = {
    Name = ""
}
}
resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sgr-055671cdd78bcae0b" ]

  tags = {
    Name = "terraform-R"
  }
}
resource "aws_instance" "terraform-R" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0d2a6d1a39ee8b441" ]

  tags = {
    Name = "terraform-R"
  }
}
resource "aws_instance" "terraform-R" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-09c956a01686bdc1d" ]

  tags = {
    Name = "terraform-R"
  }
}

resource "aws_route53_record" "frontend" {
  name            = "frontend.me25.online"
  ttl             = 30
  type            = "A"
  zone_id         = "Z0674306Y5K4DOUDCVST"

  records = [aws_instance.terraform-R.private_ip]
  
}
data "aws_ami" "myami" {
  most_recent      = true
  name_regex       = "centos-*"
  owners           = ["973714476881"]
}


output "myami" {
    value = data.aws_ami.myami
  
}
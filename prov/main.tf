resource "aws_instance" "ec2_example" {

    ami = "ami-0b4f379183e5706b9"  
    instance_type = "t2.micro" 
    key_name= "aws_key"
    vpc_security_group_ids = [aws_security_group.main.id]

  provisioner "file" {
    source      = "/root/terraform-25/index.html"

    destination = "/tmp/web/index.html"
  }
}
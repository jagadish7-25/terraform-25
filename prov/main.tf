resource "aws_instance" "ec2_example" {

    ami = "ami-0b4f379183e5706b9"  
    instance_type = "t2.micro" 
     vpc_security_group_ids = [ "sg-09c956a01686bdc1d" ]

      connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = "self.public_ip"
  }

  provisioner "file" {
    source      = "/root/terraform-25/index.html"
    destination = "/tmp/web/index.html"
  }
}
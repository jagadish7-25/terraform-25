variable "instance_type" {
    default = "t2.micro"
  
}

output "instance_type" {
    value= var.instance_type
  
}
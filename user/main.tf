resource "aws_iam_user" "latest" {
    count = length(var.user_name)
    name = var.user_name[count.index] 


}

variable "user_name" {
    default = [ "jack1", "jac2", "jack3"]
  
}


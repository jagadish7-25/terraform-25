resource "aws_iam_user" "latest" {
   for_each = var.user_name
   name = each.value 



}

variable "user_name" {
    default = [ "jack1", "jac2", "jack3"]
  
}


resource "aws_iam_user" "latest" {
   for_each = var.user_name
   name = each.value 



}

variable "user_name" {
    default = ["jack-1","jack-2","jack-3"]
    type = set(string)    
    }



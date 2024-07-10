resource "aws_iam_user" "latest" {
   for_each = var.user_name
   name = each.value 



}

variable "user_name" {
    default = {
        name = "jack-1"
    }
    {
        name = "jack-2"
    }

     {
        name = " jack-3"
     } 
}


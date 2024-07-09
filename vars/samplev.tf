variable "instance_type" {
    default = "t2.micro"
  
}

variable "instance_types" {
    default = [ "jj2.micro", "jj3.medium", "jj5.large"]
  
}

variable "instance_type_cost" {
    default = {
        jj2.micro = 100
        jj3.medium = 200
        jj5.large = 400
    }
  
}

variable "instance_type_cost_mem" {
    default = {
        jj2.micro = {
            cost = 100
            mem = 20
        }
        jj3.medium = {
            cost = 200
            mem = 40
        }
        jj5.large = {
            cost = 400
            mem = 150
        }
    }
  
}
output "instance_type_cost_mem" {
    value= var.instance_type
  
}
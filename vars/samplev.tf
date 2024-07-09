variable "instance_type" {
    default = "t2.micro"
  
}

variable "instance_types" {
    default = [ "t2.micro", "t3.medium", "c5.large"]
  
}

variable "instance_type_cost" {
    default = {
        t2.micro = 100
        t3.medium = 200
        c5.large = 400
    }
  
}

variable "instance_type_cost_mem" {
    default = {
        t2.micro = {
            cost = 100
            mem = 20
        }
        t3.medium = {
            cost = 200
            mem = 40
        }
        c5.large = {
            cost = 400
            mem = 150
        }
    }
  
}
output "instance_type_cost_mem" {
    value= var.instance_type
  
}
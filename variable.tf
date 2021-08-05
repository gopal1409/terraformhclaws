variable "aws_region" {
    description = "Region in which aws resource to be created"
    type = string
    default = "eu-central-1"
  
}

variable "instance_type" {
    description = "modify the instance type"
    type = string
    default = "t3a.micro"
  
}
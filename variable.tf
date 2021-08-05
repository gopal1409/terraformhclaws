variable "aws_region" {
    description = "Region in which aws resource to be created"
    type = string
    default = "us-east-1"
  
}

variable "aws_instance" {
    description = "modify the instance type"
    type = string
    default = "t2.micro"
  
}
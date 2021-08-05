variable "aws_region" {
    description = "Region in which aws resource to be created"
    type = string
    default = "us-west-2"
  
}

variable "aws_instance" {
    description = "modify the instance type"
    type = string
    default = "t2.micro"
  
}
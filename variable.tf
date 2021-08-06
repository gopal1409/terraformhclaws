variable "aws_region" {
    description = "Region in which aws resource to be created"
    type = string
    default = "ap-northeast-2"
  
}

variable "instance_type" {
    description = "modify the instance type"
    type = string
    default = "t3a.micro"
  
}
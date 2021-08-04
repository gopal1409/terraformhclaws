resource "aws_instance" "ec2demo" {
 
    ami = "ami-0453cb7b5f2b7fca2"
    instance_type = "t2.micro"
    user_data = file(${path.module}/app1-install.sh)
    #identifier = expression #argument
    tags = {
        "Name" = "gopal-instance"
    }
}
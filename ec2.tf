resource "aws_instance" "ec2demo" {
 
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.aws_instance
    user_data = file("${path.module}/app1-install.sh")
    #identifier = expression #argument
    tags = {
        "Name" = "gopal-instance"
    }
}
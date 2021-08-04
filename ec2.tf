resource "aws_instance" "ec2demo" {
 
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.aws_instance
    user_data = file("${path.module}/app1-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
    #identifier = expression #argument
    tags = {
        "Name" = "gopal-instance"
    }
}
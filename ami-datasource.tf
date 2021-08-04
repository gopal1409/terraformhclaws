#we will get the latest ami for amazon linux2 os
data "aws_ami" "amzlinux2" {
    most_recent = true
    owner = ["amazon"]
    filter {
        name = "name"
        values = ["amzn2-ami-hvm*-gp2"]
    }
    filter{
        name = "root-device-type"
        values = ["ebs"]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}
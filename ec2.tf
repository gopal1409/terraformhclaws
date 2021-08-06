
resource "aws_instance" "ec2demo" {
 
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instance_type
    user_data = file("${path.module}/app1-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
    #identifier = expression #argument
    #this will create ec2 instance in all az
 #   for_each = toset(keys({for az, details in data.aws_ec2_instance_type_offering.my_inst_type:
  #  az => details.instance_type if length(details.instance_type)!=0 }))
   # availability_zone = each.key #each value list of items each.key==each.value. 
    tags = {
        "Name" = "gopal-demo"
    }
}
#get the list of availability zone in a specific region
#avaialbility zone datasource
#Datasource 1
data "aws_availability_zones" "my_zones"{
    filter {
        name = "opt-in-status"
        values = ["opt-in-not-required"]
    }
}
#check if that instance type is supported in that specific region in list of az
#get the list of az in a particular region where that respective instance type of supported. 
#datasource-2
data "aws_ec2_instance_type_offering" "my_inst_type" {
  for_each = toset(data.aws_availability_zones.my_zones.names)
  filter {
    name   = "instance-type"
    values = ["t2.micro"]
  }  
  filter {
    name = "location"
    values = [each.key]
  }
  location_type = "availability-zone"
}

#output-1
# all az mapped to support instance type
output "output_v3_1" {
    value = {
        for az, details in data.aws_ec2_instance_type_offering.my_inst_type: az => details.instance_type
    }

}

#output=2
#we are going to see which az are not supporting the instance type
output "output_v3_2" {
    value = {
        for az, details in data.aws_ec2_instance_type_offering.my_inst_type:
        az => details.instance_type if length(details.instance_type)!=0}
  
}









































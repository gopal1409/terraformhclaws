output "for_output_list" {
  description = "For loop with list"
  value = toset([for instance in aws_instance.ec2demo: instance.public_dns])
}

output "for_output_map1" {
    description = "for loop with map"
    value = tomap({for instance in aws_instance.ec2demo: az => instance.public_dns})
}
output "for_output_list" {
  description = "For loop with list"
  value = toset([for instance in aws_instance.ec2demo: instance.public_dns])
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT gateway"
  value       = aws_nat_gateway.nat_gw.id
}

output "public_security_group_id" {
  description = "The ID of the public security group"
  value       = aws_security_group.public_sg.id
}

output "private_security_group_id" {
  description = "The ID of the private security group"
  value       = aws_security_group.private_sg.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "Id for the public subnet within main VPC"
}
output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
  description = "Id for the public subnet within main VPC"
}
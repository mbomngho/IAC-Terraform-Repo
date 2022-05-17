
output "vpc_id" {
  description = "vpc id"
  value       = aws_vpc.example.id
}

output "pubic_ip" {
  description = "public ip"
  value       = aws_instance.web.public_ip
}
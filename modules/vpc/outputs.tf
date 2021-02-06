output "vpc_id" {
    value = aws_vpc.main.id  
}

output "igwid" {
    value = aws_internet_gateway.default.id
  
}
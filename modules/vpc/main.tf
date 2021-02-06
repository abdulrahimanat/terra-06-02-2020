resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = merge({
      Name= var.name
      },   
  var.common_tags)
  
}

resource "aws_internet_gateway" "default" {
      vpc_id = aws_vpc.main.id

  tags = merge({
      Name= var.name
      },   
  var.common_tags)
 
}
variable "vpc_cidr_block" {
    description = "CIDR block"
    type = string
    default = null  
}

variable "name" {
    description = "Name"
    type = string
    default = null  
}

variable "common_tags" {
    description = "Common Tags to be applied"
    type = map
    default = null  
}
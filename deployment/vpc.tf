resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "subnet_us_west_1a_public" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = var.us_west_1a_subnets_config.az
  cidr_block              = var.us_west_1a_subnets_config.public_subnet_cidr_block
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet_us_west_1a_private" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = var.us_west_1a_subnets_config.az
  cidr_block              = var.us_west_1a_subnets_config.private_subnet_cidr_block
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet_us_west_1b_public" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = var.us_west_1b_subnets_config.az
  cidr_block              = var.us_west_1b_subnets_config.public_subnet_cidr_block
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet_us_west_1b_private" {
  vpc_id                  = aws_vpc.vpc.id
  availability_zone       = var.us_west_1b_subnets_config.az
  cidr_block              = var.us_west_1b_subnets_config.private_subnet_cidr_block
  map_public_ip_on_launch = true
}

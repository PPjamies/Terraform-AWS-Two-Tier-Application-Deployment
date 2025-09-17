variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "us_west_1a_subnets_config" {
  type        = map(string)
  description = "Config for us-west-1a Subnets"
  default = {
    az                        = "us-west-1a"
    public_subnet_cidr_block  = "10.0.1.0/24"
    private_subnet_cidr_block = "10.0.2.0/24"
  }
}

variable "us_west_1b_subnets_config" {
  type        = map(string)
  description = "Config for us-west-1b Subnets"
  default = {
    az                        = "us-west-1b"
    public_subnet_cidr_block  = "10.0.3.0/24"
    private_subnet_cidr_block = "10.0.4.0/24"
  }
}

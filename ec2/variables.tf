variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "key_name" {
  default     = "testing_key"
  description = "Name of AWS key pair"
}

# ubuntu AMI
variable "ami_id" {
  default = {
    "us-east-1" = "ami-8f37a4f5"
  }
}

variable "subnet_id" {
  default     = "subnet-936ccfce"
  description = "Subnet for the instance"
}

# AWS Tags
variable "ec2_name" {
  default     = "testing_ec2"
  description = "Key pair for EC2 instance"
}

variable "ec2_owner" {
  default     = "Vin"
  description = "EC2 instance name"
}

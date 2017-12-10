variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

# ubuntu-trusty-14.04 (x64)
variable "ami_id" {
  default = {
    "us-east-1" = "ami-8f37a4f5"
    "us-west-2" = "ami-7dc31d05"
  }
}

variable "availability_zones" {
  default     = "us-east-1a,us-east-1c"
  description = "List of availability zones"
}

variable "key_name" {
  default     = "testing_key"
  description = "AWS key pair"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "1"
}

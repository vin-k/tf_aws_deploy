provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_instance" "ec2_instance" {

ami      = "${lookup(var.ami_id, var.aws_region)}"
instance_type = "${var.instance_type}"
subnet_id = "${var.subnet_id}"

# Security group
security_groups = ["${aws_security_group.default.id}"]
user_data       = "${file("userdata.sh")}"
key_name        = "${var.key_name}"

tags {
  Name          = "${var.ec2_name}"
  Owner         = "${var.ec2_owner}"
}

}

# Default security group to access
# the instances over SSH and HTTP
resource "aws_security_group" "default" {
  name        = "terraform_example_sg"
  description = "Used in the terraform"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

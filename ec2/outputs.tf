output "ec2_id"{
  value = "${aws_instance.ec2_instance.id}"
}

output "ec2_ip"{
  value = "${aws_instance.ec2_instance.public_ip}"
}

output "ec2_ip-val" {
    value = aws_instance.myinstance.public_ip
}
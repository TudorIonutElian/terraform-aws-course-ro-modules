output "ec2_module_instance_type" {
    description = "I will print AMI ID"
    value = aws_instance.prima_instanta_ec2.instance_type
}

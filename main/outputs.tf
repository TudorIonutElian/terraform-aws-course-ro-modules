output "module_ec2_ec2_ami_id" {
  description = "Vom prelua instance type de la child module"
  value = module.module_ec2.ec2_module_instance_type
}

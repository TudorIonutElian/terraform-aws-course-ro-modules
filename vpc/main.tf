resource "aws_vpc" "primul_vpc" {
  cidr_block = "10.0.0.0/16"
  count = var.numar_de_instance_vpc

  tags = {
    "my_first_tag" = "my_first_tag_value_module"
    "my_second_tag" = "my_second_tag_value_module"
  }
}

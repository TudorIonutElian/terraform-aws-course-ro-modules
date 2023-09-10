# primul data source
data "aws_ami" "ami_favorit" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}

# Prima noastra instanta ec2
resource "aws_instance" "prima_instanta_ec2" {
  ami = data.aws_ami.ami_favorit.id
  #ami = "ami-0766f68f0b06ab145"
  instance_type = "t2.micro"

  tags = {
    "module_tag" = "Ec2 Module Tag"
  }
  
}

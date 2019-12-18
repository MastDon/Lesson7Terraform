resource "aws_instance" "test" {
  ami = var.ami_ubuntu
  instance_type = var.instance_type
  vpc_security_group_ids = [
    aws_security_group.dev_pro.id]
  tags = {
    Name = var.instance_name
    Group = var.group_name
  }


}
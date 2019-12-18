resource "aws_volume_attachment" "ebs_ssd" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ssd.id
  instance_id = aws_instance.test.id


}
resource "aws_volume_attachment" "ebs_standard" {
  device_name = "/dev/sde"
  volume_id = aws_ebs_volume.standard.id
  instance_id = aws_instance.test.id


}

resource "aws_ebs_volume" "ssd" {
  availability_zone = var.availability_zone
  size = 1
  type = "gp2"

  tags = {
    Name = "SSD Volume"
  }
}
resource "aws_ebs_volume" "standard" {
  availability_zone = var.availability_zone
  size = 1
  type = "standard"

  tags = {
    Name = "standard Volume"
  }
}
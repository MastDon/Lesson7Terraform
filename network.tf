resource "aws_security_group" "dev_pro" {
  name = var.group_name
  description = "Open ports for webserver and ssh"

  dynamic "ingress" {

    for_each = [
      "80",
      "22",
      "443"]

    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = [
        var.witelist
      ]
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]

  }


}

resource "aws_eip" "ip" {
  instance = aws_instance.test.id
  vpc = true

}
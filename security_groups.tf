resource "aws_security_group" "nginx_sg" {
  vpc_id = aws_vpc.main.id
}

resource "aws_security_group_rule" "allow_http" {
  security_group_id = aws_security_group.nginx_sg.id
  type             = "ingress"
  from_port        = 80
  to_port          = 80
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_ssh" {
  security_group_id = aws_security_group.nginx_sg.id
  type             = "ingress"
  from_port        = 22
  to_port          = 22
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_outbound" {
  security_group_id = aws_security_group.nginx_sg.id
  type             = "egress"
  from_port        = 0
  to_port          = 0
  protocol        = "-1"
  cidr_blocks     = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_https" {
  security_group_id = aws_security_group.nginx_sg.id
  type             = "ingress"
  from_port        = 443
  to_port          = 443
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]
}
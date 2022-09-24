resource "aws_instance" "App_server" {

  ami                    = var.img_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.SecurityGroup.id]
  tags = {
    Name = "${var.region_app}-CodingDojo-Server"
  }

}

resource "aws_security_group" "SecurityGroup" {

  description = "Allow incoming HTTP connections & SSH access"
  tags = {
    Name = "Custom Security Group"
  }

  ingress {
    description = "port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

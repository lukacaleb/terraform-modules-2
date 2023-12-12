# creating instance 1

resource "aws_instance" "instance" {
  ami               = var.ami
  instance_type     = var.type
  key_name          = var.key_pair
  security_groups   = [aws_security_group.security_group.id]
  subnet_id         = aws_subnet.public_subnet_az1.id
  availability_zone = data.aws_availability_zones.available_zones.names[0]

    user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install docker.io -y
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo apt install ansible -y
              EOF

  tags = {
    Name   = "${var.project_name}-instance"
    source = "terraform"
  }
}
resource "aws_security_group" "dynamicsg-sts" {
  name        = "dynamic-sg-sts"
  description = "Vault Ingress"
  vpc_id = "vpc-0ceb8eb1a9db726a0"


  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress{
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
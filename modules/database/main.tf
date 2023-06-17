module "rds" {
  source     = "terraform-aws-modules/rds/aws"
  version    = "5.9.0"
  identifier = var.db_identifier
  tags = {
    Environment = "dev"
  }
}

resource "aws_rds_cluster" "name" {


}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Environment = "allow_tls"
  }
}

resource "aws_instance" "name" {
  root_block_device {
    encrypted = "false"
  }
  tags = {
    "Environment" = "value"
  }
}

resource "aws_ebs_volume" "name" {

}

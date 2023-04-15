resource "aws_security_group" "allow_db_incoming_vpc" {
  name        = "allow_inbound_to_db"
  description = "Allow db  inbound traffic from ${var.aws_account_name} ${var.env_name } VPC"
  vpc_id      = var.vpc_id

  ingress {
    description      = "DB Connection from ${var.aws_account_name} ${var.env_name } VPC"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr_block]
  }

  ingress {
    description      = "Open DB Connection from everywhere"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  #tfsec:ignore:aws-vpc-no-public-ingress-sgr
  }
  ingress {
               cidr_blocks      = ["0.0.0.0/0"]  #tfsec:ignore:aws-vpc-no-public-ingress-sgr
               description      = "Open DB Connection from everywhere"
               from_port        = 3000
               protocol         = "tcp"
               to_port          = 3000
            }

  #tfsec:ignore:aws-vpc-add-description-to-security-group-rule
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-egress-sgr
    ipv6_cidr_blocks = ["::/0"]      #tfsec:ignore:aws-vpc-no-public-egress-sgr
    description      = "egress"
  }


  tags = {
    Name = "${var.aws_account_name}-${var.env_name}-rds-sg"
  }
}
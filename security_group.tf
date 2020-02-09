resource "aws_security_group" "ec2" {
  name        = "sample-ec2-sg"
  description = "This is sample"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
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
  tags = {
    Name = "sample_ec2_security_group"
  }
}

# Ref.
# https://dev.classmethod.jp/cloud/aws/launch-ec2-from-latest-amazon-linux2-ami-by-terraform/
data "aws_ssm_parameter" "latest_amzn2_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "sample" {
  ami                    = "${data.aws_ssm_parameter.latest_amzn2_ami.value}"
  instance_type          = "${var.ec2_instance_type}"
  vpc_security_group_ids = ["${aws_security_group.ec2.id}"]
  subnet_id              = "${aws_subnet.public.id}"
  key_name               = "${var.key_pair_name}"

  tags = {
    Name = "sample_ec2_instance"
  }
}

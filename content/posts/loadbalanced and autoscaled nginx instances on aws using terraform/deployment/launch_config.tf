resource "aws_launch_configuration" "web" {
  name_prefix                 = "web-"
  image_id                    = var.ami
  instance_type               = "t2.micro"
  key_name                    = "tutorials"
  security_groups             = ["${aws_security_group.sg_ec2.id}"]
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  lifecycle {
    create_before_destroy = true
  }
}
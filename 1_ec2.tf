data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.ssh.name]
  key_name = var.ec2_key

  tags = {
    Name = var.name
  }

  user_data = file("ec2_user_data.sh")
}


output "aws_instance_web_public_ip" {
  value = "${aws_instance.web.public_ip}"
}

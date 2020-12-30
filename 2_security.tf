resource "aws_security_group" "ssh" {
  name = "${var.name}-ssh"
  description = "a Security Group that allows connection through port443"
#   vpc_id = "${data.aws_vpc.default.id}"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "165.231.178.21/32" ]
  } 
  egress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  egress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
  
  tags = {
      Name = var.name
  }
}

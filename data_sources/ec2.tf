resource "aws_security_group" "allow_ssh" {
  name        = "allow_all"
  description = "Allow TLS inbound traffic and all outbound traffic"
 egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] 
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_ssh"
    }
}
 
resource "aws_instance" "expense" {
  count= 3
  ami                     = data.aws_ami.myami.id
  instance_type           = "t2.micro"
  vpc_security_group_ids= [aws_security_group.allow_ssh.id]
  tags={
    Name= var.instance_names[count.index]

  }
}
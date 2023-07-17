resource "aws_instance" "web" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  key_name      = "mykp"
  vpc_security_group_ids = [aws_security_group.libera-ssh.id ]
  subnet_id = aws_subnet.main.id
  
  tags = {
    Name = "terraform"
  }
}
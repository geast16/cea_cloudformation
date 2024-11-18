resource "aws_instance" "myec2" {
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"
  tags = {
    Name = "ec2-instance"
  }

}

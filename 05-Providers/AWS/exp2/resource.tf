resource "aws_instance" "blue" {
  ami           = "ami-08b6f2a5c291246a0"
  instance_type = "t2.micro"

  tags = {
    Name = "Blue"
  }
}



resource "aws_instance" "green" {
  provider = aws.myregion
  ami           = "ami-0b9f27b05e1de14e9"
  instance_type = "t2.micro"

  tags = {
    Name = "Green"
  }
}

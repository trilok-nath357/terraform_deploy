provider "aws" {
  region = "us-east-1"  # Replace with your desired region  
}


#-----------------------------------------

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-063f8c4284632c38c"
  tags = {
    Name = "Git-Deploy-002"
  }
}
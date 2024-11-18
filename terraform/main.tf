provider "aws" {
  region = "us-east-1"
}

# Resources: Describe the infrastructure components you want to create
resource "aws_instance" "example" {
  ami           = "ami-063d43db0594b521b"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2-Instance"
  }
}

# Variables help make your configurations more flexible and reusable.
variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

# Outputs specifies the output values you want to retrieve after applying your configuration.
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id

}

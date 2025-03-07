provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "docker_host" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with your desired AMI
  instance_type = "t2.micro"

  tags = {
    Name = "DockerHost"
  }
}

output "public_ip" {
  value = aws_instance.docker_host.public_ip
}

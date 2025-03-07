output "public_ip" {
  description = "Public IP of the Docker host"
  value       = aws_instance.docker_host.public_ip
}

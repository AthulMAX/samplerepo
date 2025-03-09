Dockerized Flask Web Application with CI/CD Pipeline
This project demonstrates the deployment of a simple HTML web application built with Flask, Dockerized for consistency, and automated using a CI/CD pipeline with GitHub Actions and AWS. The setup includes infrastructure provisioning with Terraform, server configuration with Ansible, and Nginx as a reverse proxy to handle external traffic.

Features
Flask Web Application: A lightweight Python web app serving a simple HTML page.

Dockerized: The app is containerized for easy deployment and scalability.

CI/CD Pipeline: Automated build, test, and deployment using GitHub Actions.

Infrastructure as Code (IaC): Cloud resources provisioned using Terraform.

Server Configuration: Automated server setup with Ansible.

Nginx Reverse Proxy: Handles external traffic and routes it to the Flask app.

Tools and Technologies Used
Flask: For building the web application.

Docker: For containerizing the application.

Terraform: For provisioning AWS infrastructure (EC2, VPC, Subnets, etc.).

Ansible: For automating server configuration and Docker setup.

GitHub Actions: For CI/CD pipeline automation.

AWS: For hosting the application and managing cloud resources.

Nginx: As a reverse proxy to route traffic to the Flask app.

Challenges Faced
Handling External Traffic: Ensuring the Docker container was properly configured to handle external traffic.

Docker Lifecycle Management: Automating container restarts on failure and collecting logs for debugging.

Docker Daemon Issues: Errors like "Cannot connect to the Docker daemon" required troubleshooting to ensure the Docker service was running.

Deprecated Docker Builder: Migrating from the legacy Docker builder to buildx for building images with BuildKit.

Project Structure
Copy
project/
├── app/
│   ├── app.py              # Flask application
│   ├── templates/
│   │   └── index.html      # HTML file for the web app
├── Dockerfile              # Docker configuration for the app
├── terraform/              # Terraform files for AWS infrastructure
├── ansible/                # Ansible playbooks for server setup
├── .github/workflows/      # GitHub Actions CI/CD pipeline
└── README.md               # Project documentation
Setup Instructions
Prerequisites
Docker installed and running.

Terraform installed.

Ansible installed.

AWS account with credentials configured.

GitHub repository for CI/CD.

Steps to Run the Project
Clone the Repository:

bash
Copy
git clone https://github.com/your-username/your-repo.git
cd your-repo
Set Up AWS Infrastructure with Terraform:

bash
Copy
cd terraform
terraform init
terraform apply
Configure the Server with Ansible:

bash
Copy
cd ansible
ansible-playbook -i inventory playbook.yml
Build and Run the Docker Container:

bash
Copy
docker build -t flask-app .
docker run -d -p 5000:5000 flask-app
Set Up Nginx as a Reverse Proxy:

Configure Nginx to route traffic from port 80 to the Flask app running on port 5000.

CI/CD Pipeline:

Push changes to the GitHub repository to trigger the CI/CD pipeline.

GitHub Actions will build, test, and deploy the Docker container to AWS.

How It Works
Terraform: Provisions AWS resources like EC2 instances, VPC, and subnets.

Ansible: Configures the server, installs Docker, and sets up the environment.

Docker: Containerizes the Flask app for consistent deployment.

GitHub Actions: Automates the build, test, and deployment process.

Nginx: Acts as a reverse proxy to handle external traffic and route it to the Flask app.

Future Improvements
Add monitoring and logging tools like Prometheus and Grafana.

Implement HTTPS using Let's Encrypt for secure communication.

Scale the application using Docker Swarm or Kubernetes.

Contributing
Feel free to contribute to this project! Open an issue or submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.

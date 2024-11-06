# DevOps Task for CS Team.

Welcome to the DevOps exercise! In this project, you will gain hands-on experience in:

* Containerizing an application using Docker.
* Setting up a CI/CD pipeline with GitHub Actions.
* Provisioning infrastructure on AWS with Terraform.
* Managing deployments securely while following best practices in DevOps.

Follow the tasks below step by step, and make sure to explore each area thoroughly to enhance your skills.


## Topics

### 1. Containerization

**Objective**: Containerize the application to ensure consistent deployment across different environments.

Go through the tasks below to achieve the topic objective.

1. Write a Dockerfile to containerize the application.
2. Ensure the application runs correctly inside the container.
3. Optimize the Docker image using multi-stage builds to keep it lightweight.
4. Add health checks in the Dockerfile for monitoring the application's status. Use the HEALTHCHECK instruction in Dockerfile to set up application health monitoring.
5. Use environment variables to securely manage configuration settings.


### 2. Continuous Integration (CI)

  **Objective**: Automate the testing and build processes to ensure code quality and catch issues early.

Go through the tasks below to achieve the topic objective.

  Set up a GitHub repository for your application.
  Configure GitHub Actions to:

1. Automatically build the Docker image upon each commit.
2. Run basic lint checks or unit tests to validate the code.
3. Implement branch-specific workflows, such as different CI steps for develop and main branches.
4. Include a security scan for the Docker image. (Use tools like Trivy or Clair for Docker image vulnerability scanning)

### 3. Infrastructure as Code (IaC)

  **Objective**: Use Terraform to automate the provisioning of AWS resources.

Go through the tasks below to achieve the topic objective.
1. Provision an EC2 instance to host the application.
2. Configure a security group to allow necessary traffic (e.g., port 80 for HTTP).
3. Set up an Auto Scaling Group and an Elastic Load Balancer to ensure high availability.
4. Manage state files remotely using an S3 bucket with state locking via DynamoDB.
5. Ensure the Terraform scripts are modular and re-usable.

### 4.  Continuous Deployment (CD)

  **Objective**: Automate the deployment process to make application updates seamless and reliable.

Go through the tasks below to achieve the topic objective.

Extend the GitHub Actions workflow to:
1. Push the Docker image to a container registry (e.g., Docker Hub).
2. Deploy the application on the EC2 instance using the Docker image.
3. Implement blue-green or rolling deployment strategies to prevent downtime during updates. (Use an Application Load Balancer (ALB) in AWS to enable blue-green deployments by switching traffic between two environments).
4. Monitor deployment and application health with AWS CloudWatch, setting up alerts for critical events. Consider using CloudWatch alarms for monitoring EC2 instance CPU usage, memory, and application logs.

### 5. Logging and Monitoring with ELK Stack

**Objective**: Collect, centralize, and visualize logs from Docker containers to enhance monitoring and troubleshooting.

Go through the tasks below to achieve the topic objective.

* Install ELK Stack:
1. Install Elasticsearch, Logstash, and Kibana on the EC2 instance.
2. Elasticsearch: Acts as the log storage and search engine.
3. Logstash: Collects and processes Docker container logs.
4. Kibana: Provides a dashboard for viewing and filtering logs.

* Collect Logs from Docker:
1. Use Docker's logging driver to forward logs to Logstash without modifying the application code.
2. Configure Logstash to receive Docker logs, parse them, and store them in Elasticsearch.

* View and Analyze Logs in Kibana:
1. Set up a basic Kibana dashboard to visualize logs in real-time.
2. Use search filters to locate specific log entries for troubleshooting.
3. Apply basic retention policies in Elasticsearch to manage log storage and avoid excessive data buildup.


### 6.  Security Considerations

 **Objective**: Apply security best practices throughout the project.

Go through the tasks below to achieve the topic objective.

1. Securely manage CI/CD secrets in GitHub Actions using encrypted secrets.
2. Perform regular security scans on code, dependencies, and Docker images

### 7. Documentation

 **Objective**: Document the project clearly and report on CI/CD and infrastructure processes.

Go through the tasks below to achieve the topic objective.

Write a README with:

1. Instructions on how to run the project locally.
2. How to set up the infrastructure using Terraform.
3. How to deploy the application using the CI/CD pipeline.
4. Troubleshooting tips for common issues.

Store these reports in a centralized location, such as an S3 bucket, for easy access.
Ensure the S3 bucket has proper access control to prevent unauthorized access.

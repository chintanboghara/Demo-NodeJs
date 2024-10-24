# Demo NodeJs

This is a simple demo Node.js application designed for deployment via Docker. The project includes a basic GitLab CI/CD pipeline to build, test, and deploy the app.

## Project Overview

This Node.js application demonstrates the use of Docker for containerization and CI/CD with GitLab. It uses a basic Express server to respond to requests on port 3000.

## GitLab Repository

Access the repository here:
https://gitlab.com/chintanboghara/Demo-NodeJs.git

### Pipelines

Check out the pipeline status and details here:
https://gitlab.com/chintanboghara/Demo-NodeJs/-/pipelines

## Docker Hub 

https://hub.docker.com/repository/docker/chintanboghara/demo-nodejs/

## CI/CD Pipeline

This project is set up with GitLab CI/CD. The `.gitlab-ci.yml` file includes the following stages:
- **Build**: Builds the Docker image.
- **Test**: Runs basic tests (currently placeholder).
- **Push to DockerHub**: Tags and pushes the Docker image to DockerHub.
- **Deploy**: Pulls and runs the image in a Docker container.

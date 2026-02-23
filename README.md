# React CI/CD Pipeline with Docker & GitHub Actions

This project demonstrates a real-world CI/CD pipeline for a React single-page application using GitHub Actions and Docker. Whenever code is pushed to the main branch, the pipeline automatically installs dependencies, builds the application, validates it inside a Docker container, and deploys the static build files to an AWS S3 bucket.

Docker is used only for CI validation to ensure the application builds and runs correctly in a consistent environment. The final deployment is static hosting on AWS S3, which does not require Docker at runtime.

## Tech Stack
- React (Vite)
- GitHub Actions
- Docker
- AWS S3
- Node.js 20

## CI/CD Flow
Code Push → GitHub Actions → Install Dependencies → Build App → Docker Build & Run → Deploy to S3

## Local Setup
npm install --legacy-peer-deps  
npm run dev  

## Notes
This project reflects real junior DevOps responsibilities, focusing on automation, environment consistency, and cloud deployment. It is designed to be extended later with Jenkins, Kubernetes, and Terraform.

Author: Muhammad Waqas
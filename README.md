❗ Project Capstone. Instruction to [follow](https://docs.google.com/document/d/17OwlITE-yPWNj3Vi5RtQfz3ItvSkOfnbaVMnzlZyGTg)

# Project Capstone - Part I. 

## 🔥 Project Brief Overview:
Building a Docker Jenkins Pipeline, Testing Application, Pushing to Docker Hub, and Deploying to Kubernetes 
- **Before** using Jenkins, we need to install Docker for specific OS. In my case, I install Docker on Kali Linux(Debian)
- **Next** step is pull the Jenkins image and deploy it on Docker, we will create Dockerized Jenkins.
- **Next** install necessary Jenkins Plugins:
```
• Ansible
• Docker
• Docker Pipeline
• CloudBees Docker Custom Build Environment
• Python
• Shining Panda
```
- **Next** add Docker Hub credentials to push the image after successful build
- **Next** image was pushed to Docker Hub, set up _Kubernetes.yaml_ file to pull image and create 5 pods 

## 📌 Must Have
- The following file are must have in order to achieve the results: **Dockerfile,** **Jenkinsfile,** **kubernetes.yaml,** **Ansible-Playboo.yaml**
- **Optional** to have _**yaml**_ file with necessary commands which will run and install all dependencies automatically.

## ❗ Visual overview of Project
![screenshot](CAPSTONE_PROJECT.jpg)
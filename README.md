# aws-high-availability-architecture
A fault-tolerant, auto-scaling web application deployed on AWS using EC2, ALB, and CloudWatch
# ☁️ AWS High-Availability Web Architecture

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazon-aws)
![EC2](https://img.shields.io/badge/Compute-EC2-blue?style=for-the-badge&logo=amazon-ec2)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📖 Project Overview
This project demonstrates the deployment of a **highly available** and **fault-tolerant** web application on AWS. The infrastructure is designed to automatically handle traffic spikes by scaling EC2 instances up or down based on CPU utilization, ensuring optimal performance and cost efficiency.

### 🎯 Key Features
* **Auto Scaling:** Automatically adds/removes servers based on traffic load (CPU > 50%).
* **Load Balancing:** Distributes incoming traffic evenly across healthy instances using an Application Load Balancer (ALB).
* **High Availability:** Infrastructure spans across 2 Availability Zones to survive data center failures.
* **Health Checks:** Automatically detects and replaces unhealthy instances.

---

## 🏗️ Architecture Diagram
![Architecture Diagram](./architecture-diagram.png)

---

## 🛠️ Tech Stack & Services Used
| Service | Purpose |
| :--- | :--- |
| **Amazon EC2** | Virtual servers for hosting the web application |
| **Auto Scaling Group** | Manages the fleet of EC2 instances dynamically |
| **Application Load Balancer** | Distributes traffic to healthy targets |
| **CloudWatch** | Monitors CPU metrics to trigger scaling alarms |
| **VPC & Security Groups** | Network isolation and firewall rules |
| **Bash Scripting** | User Data script for automated bootstrapping |

---

## 📸 Implementation Screenshots

### 1. Website Output (Proof of Success)
*The application is live and accessible via the Load Balancer DNS.*
![Website Preview](./website-output.png)

### 2. Auto Scaling in Action
*The system detected high load and automatically launched a new instance.*
![Scaling Activity](./asg-scaling-activity.png)

### 3. Load Balancer Health Checks
*All targets registered and healthy across multiple Availability Zones.*
![Health Checks](./target-health-check.png)

---

## 🚀 How to Replicate

1.  **Create a Launch Template:** Use Amazon Linux 2023 and add the bootstrap script found in [`scripts/install_apache.sh`](./scripts/install_apache.sh).
2.  **Configure ALB:** Set up an Internet-facing Load Balancer with a Target Group.
3.  **Deploy ASG:** Create an Auto Scaling Group attached to the ALB with a Target Tracking Policy (CPU utilization metric).
4.  **Test:** Use `stress` tool to simulate load:
    ```bash
    sudo yum install stress -y
    stress --cpu 4 --timeout 600
    ```

---

## 👨‍💻 Author
Built by **SANIYA GUPTA** *Enthusiastic about Cloud Computing and DevOps.*

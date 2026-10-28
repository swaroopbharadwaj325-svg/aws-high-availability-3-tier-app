# Highly Available 3-Tier Web Application on AWS

## Project Overview
This project demonstrates the network foundation for a highly available three-tier web application using Amazon Web Services (AWS).

The goal is to separate the public entry point, application servers, and database into distinct network layers while following AWS security best practices.

## Architecture

- **Web Tier:** Public-facing Application Load Balancer (planned)
- **Application Tier:** EC2 instances with Auto Scaling in private subnets (planned)
- **Database Tier:** Private database using Amazon RDS (planned)
- **Networking:** Amazon VPC, public and private subnets, route tables, and Internet Gateway
- **Security:** Security groups and IAM roles

## AWS Region
Asia Pacific (Mumbai) — `ap-south-1`

## VPC Configuration

- **VPC Name:** `project1-ha-vpc`
- **IPv4 CIDR:** `10.0.0.0/16`

### Subnets

| Subnet | CIDR | Availability Zone |
|---|---|---|
| Public A | `10.0.1.0/24` | `ap-south-1a` |
| Public B | `10.0.2.0/24` | `ap-south-1b` |
| Private App A | `10.0.11.0/24` | `ap-south-1a` |
| Private App B | `10.0.12.0/24` | `ap-south-1b` |
| Private DB A | `10.0.21.0/24` | `ap-south-1a` |
| Private DB B | `10.0.22.0/24` | `ap-south-1b` |

## Routing

- Public route table: Local VPC route and default route to the Internet Gateway.
- Private application route table: Local VPC route only.
- Private database route table: Local VPC route only.

## Security Groups

- `project1-alb-sg`: HTTP traffic on port 80 from the internet.
- `project1-app-sg`: HTTP traffic on port 80 from the load balancer security group.
- `project1-db-sg`: PostgreSQL traffic on port 5432 from the application security group.

## IAM

An EC2 IAM role named `project1-ec2-role` has been created. No additional permissions are attached yet.

## Current Status

**Completed:** VPC, six subnets, Internet Gateway, three route tables, subnet associations, three security groups, and EC2 IAM role.

**Planned:** Web application deployment, Application Load Balancer, EC2 Auto Scaling, database deployment, monitoring, and high-availability testing.

## Cost Awareness

This project is being developed with AWS Free Plan credits in mind. Resources that may incur hourly charges are being deferred until costs are reviewed. No claim of a fully deployed or production-ready application is made at this stage.

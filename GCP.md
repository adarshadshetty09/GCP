```
https://github.com/devopswithcloud/GoogleCloudPlatform/tree/master/V2
```

# GCP Cloud Engineer – Detailed Notes (Company Scenario to Real-World Job)

---

# 1. Why are Companies Moving to Cloud?

Imagine a company called **ABC Technologies**.

ABC has many products:

* Online Shopping Application
* Banking Application
* Healthcare Portal
* Food Delivery App

Let's consider one application called **XXX Shopping Application**.

The application development lifecycle is:

```
Developer
      ↓
QA Testing
      ↓
Operations Team
      ↓
Production
      ↓
Customers
```

Developers build the application on their local systems.

Example:

The application is similar to Google's Microservices Demo:

**GitHub Repository**

[https://github.com/GoogleCloudPlatform/microservices-demo](https://github.com/GoogleCloudPlatform/microservices-demo)

This application contains many microservices:

* Frontend
* Product Catalog
* Cart
* Checkout
* Payment
* Shipping
* Email
* Recommendation

Each service runs independently.

---

# 2. Problem with Traditional Data Center (On-Premises)

Suppose the CEO says:

> "We need this application available for millions of users with High Availability."

The CEO asks Abdul (IT Head).

Abdul tells the Operations Team:

> "Build complete infrastructure."

Operations team now needs:

* Servers
* Database Servers
* Network Switches
* Routers
* Firewalls
* Load Balancer
* Storage
* Backup
* Monitoring

Now company purchases land.

Then builds Data Center.

Need

* Building
* Cooling System
* Air Conditioning
* UPS
* Generator
* Diesel
* Internet Links
* Security
* Cameras
* Storage Racks
* Server Racks

Need engineers:

* Linux Engineers
* Windows Engineers
* Database Engineers
* Network Engineers
* Storage Engineers
* Security Engineers

---

## Cost

### CAPEX (Capital Expenditure)

One-time investment.

Example

* Land
* Building
* Servers
* Storage
* Firewall
* Switches
* Load Balancer

Huge initial investment.

---

### OPEX (Operational Expenditure)

Recurring expenses.

Example

* Electricity
* Internet
* Salaries
* Cooling
* Hardware Maintenance
* AMC
* Backup
* Security

Every month company spends money.

---

# Problems with On-Premises Infrastructure

## 1. Scaling Problem

Suppose normally

100 users visit.

During festival

50,000 users visit.

Need

* More Servers
* More CPU
* More RAM

Can they get instantly?

No.

Need approval.

Need purchase.

Need shipping.

Need installation.

May take

* weeks
* months

Website becomes slow.

Business loses customers.

---

## 2. Disaster Recovery (DR)

Suppose Data Center catches fire.

Or flood.

Or earthquake.

Entire application is down.

No backup location.

Business loss.

---

## 3. High Availability

If one server crashes

Application becomes unavailable.

Customers cannot use product.

---

## 4. Maintenance

Need hardware replacement.

Need firmware upgrades.

Need patching.

Need engineers.

Very expensive.

---

## 5. Downtime During Upgrade

Need OS upgrade.

Need Database upgrade.

Need storage upgrade.

Application becomes unavailable.

Customers affected.

---

## 6. Time to Market

New project arrives.

Need complete infrastructure.

May take

2 months

before developers can even start.

Business loses opportunity.

---

# Why Cloud?

Cloud providers already have

* Data Centers
* Network
* Storage
* Security
* Global Infrastructure

Company simply rents resources.

No need to purchase hardware.

---

# Cloud Engineer Team

Suppose company decides

"We are migrating to GCP."

You apply for Cloud Engineer position.

DBS Bank calls you.

They ask

> Deploy complete infrastructure in Google Cloud.

Cloud Team may have

```
Cloud Architect

↓

Cloud Engineers

↓

Cloud Operations Team

↓

Support Engineers

↓

Interns
```

---

# Business Perspective

Business wants

## 1. Shift from CAPEX to OPEX

Instead of buying servers

Pay only for usage.

Example

Old

Buy 20 servers.

Cloud

Use 20 VMs today.

Delete tomorrow.

Pay only one day.

---

## 2. Global Reach

Users are from

India

USA

Singapore

Australia

Deploy application in multiple regions.

Users access nearest server.

Lower latency.

---

## 3. Automation

This is the biggest expectation.

Suppose one environment requires

20 Virtual Machines

2 Networks

5 Firewall Rules

3 Databases

2 Load Balancers

10 Storage Buckets

Manual creation takes

2 days.

Need

Development

Testing

UAT

Production

Need same infrastructure four times.

Impossible manually.

Cloud Engineers write Infrastructure as Code.

Mostly

Terraform.

One command

```
terraform apply
```

Everything gets created.

---

# Technical Perspective

Business expects

## Instant Infrastructure

Create infrastructure in minutes.

Instead of weeks.

---

## Faster Release

Developers should receive infrastructure quickly.

New features reach market faster.

---

## Built-in High Availability

Cloud automatically provides

* Zones
* Regions
* Load Balancing

---

## Built-in Disaster Recovery

Backup across regions.

Application survives failures.

---

# Career Perspective

Cloud Engineers are in high demand because

* Companies migrate to cloud.
* Infrastructure setup becomes faster.
* Automation saves huge costs.
* Cloud platforms provide managed services.

Cloud team usually has

5–10 engineers.

Cloud-first deployment is becoming standard in many organizations.

---

# What Does a Cloud Engineer Actually Do?

A Cloud Engineer converts business requirements into cloud architecture.

Example:

Business says:

> We expect 5 million users during Diwali.

Cloud Engineer designs:

* Auto Scaling
* Load Balancer
* Multiple Zones
* Cloud SQL HA
* Monitoring
* Backup
* CDN

Business says:

> We want to reduce infrastructure cost.

Cloud Engineer

* Right sizes VMs
* Uses committed use discounts
* Stops idle VMs
* Uses managed services

Business saves money.

Salary increases because Cloud Engineer directly saves company money.

---

# Infrastructure as Code (Terraform)

Manual creation

```
VM

↓

Database

↓

Firewall

↓

Bucket

↓

Load Balancer
```

Automation

```
Terraform

↓

terraform apply

↓

Everything created automatically
```

Terraform is almost mandatory in modern cloud engineering.

---

# Production Support (War Room)

When production goes down

A War Room is created.

Teams join:

* Developers
* Cloud Engineers
* Database Engineers
* Network Engineers
* Security Team

Cloud Engineer investigates:

* Why VM stopped?
* Why CPU reached 100%?
* Why Load Balancer failed?
* Why database latency increased?
* Why Kubernetes pods restarted?

Troubleshooting and optimization are critical skills.

---

# Typical Architecture Build Timeline

For a medium-sized project

| Phase                 | Time                |
| --------------------- | ------------------- |
| Requirement Gathering | 1 day               |
| Architecture Design   | 1 day               |
| Infrastructure Build  | 1 day               |
| Testing               | 1 day               |
| Production Deployment | Depends on approval |

Infrastructure is often built within about **3 days**, followed by testing and validation.

---

# Cloud Engineer Must-Know Skills

## 1. Cloud Platform

Know at least one cloud deeply.

Examples:

* Google Cloud (GCP)
* AWS
* Azure

---

## 2. Infrastructure Components

For one application you should understand what resources are required.

Typical architecture:

```
Internet

↓

Cloud Load Balancer

↓

VM / GKE

↓

Application

↓

Cloud SQL

↓

Storage Bucket

↓

Monitoring

↓

Logging
```

---

## 3. Automation

Every infrastructure component should be automated.

Preferred tool:

Terraform.

---

# Service Models

## IaaS (Infrastructure as a Service)

You manage

* VM
* OS
* Software

Examples:

* Compute Engine
* AWS EC2

---

## PaaS (Platform as a Service)

Cloud manages OS.

You deploy only application.

Examples:

* App Engine
* Cloud Run

---

## SaaS (Software as a Service)

Everything managed by provider.

Examples:

* Gmail
* Google Docs
* Microsoft 365

---

# Three Ways to Create Resources

Every Cloud Engineer should know how to create resources using all three methods.

---

## 1. Google Cloud Console (GUI)

Example

Create VM

Console

↓

Compute Engine

↓

Create Instance

↓

Fill details

↓

Create

Good for learning and quick testing.

---

## 2. gcloud CLI

Example

```bash
gcloud compute instances create vm1 \
  --zone=asia-south1-a \
  --machine-type=e2-medium
```

Useful for scripting and automation.

---

## 3. Terraform (Preferred)

Example

```hcl
resource "google_compute_instance" "vm" {
  name         = "vm1"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}
```

Deploy

```bash
terraform init
terraform plan
terraform apply
```

This is the preferred approach in enterprise environments because it is repeatable, version-controlled, and easy to automate.

---

# GCP Certification Maintenance

Google Cloud certifications are generally valid for **two years**. Before expiration, you need to pass the renewal or recertification exam to maintain your certification status. You can track certification details and renewal information on the official Google Cloud certification website:

* [Google Cloud Certifications](https://cloud.google.com/learn/certification?utm_source=chatgpt.com)

Keeping certifications current helps demonstrate up-to-date cloud knowledge, although hands-on experience and automation skills are usually more important in interviews.

---

# Key Takeaways

* Companies move to the cloud to reduce costs, improve scalability, and increase agility.
* Cloud shifts spending from **CAPEX** to **OPEX**.
* High Availability (HA) and Disaster Recovery (DR) are built into cloud platforms.
* **Terraform** is one of the most important skills for cloud engineers because manual infrastructure management does not scale.
* A Cloud Engineer's primary responsibilities are to build **secure, scalable, highly available, automated, and cost-efficient** infrastructure.
* Learn every major GCP service in **three ways**: **Console → gcloud CLI → Terraform**. This approach is highly valued in real-world enterprise environments.

# Google Cloud Platform (GCP) - Complete Beginner Notes

---

# Google Cloud Platform (GCP)

## Why learn the GCP Console first?

Before learning Terraform, Ansible, Python automation, or CI/CD, you should understand the **GCP Console**.

If you understand the console:

* Creating resources becomes easy.
* Automation becomes easier because you already know what Terraform or scripts are creating.
* Troubleshooting becomes much easier.

You should understand concepts such as:

* Boot Disk
* Virtual Machine
* VPC Network
* Firewall Rules
* IAM
* Storage
* Load Balancer
* Regions
* Zones
* Projects

Once you understand these manually, automating them is straightforward.

---

# What is Cloud Computing?

Cloud Computing is the delivery of computing resources over the Internet whenever required.

Instead of purchasing physical servers, networking devices, and storage, companies rent them from cloud providers.

Cloud computing provides services such as:

* Virtual Servers
* Storage
* Databases
* Networking
* Security
* Monitoring
* AI Services
* Machine Learning
* Kubernetes
* Big Data

The customer pays only for what they use.

This is called the **Pay-as-you-Go** model.

---

# Traditional Infrastructure (On-Premises)

Before cloud computing:

Company purchases:

* Servers
* Storage
* Switches
* Routers
* Firewalls
* Power Backup
* Cooling
* Data Center Space

Problems:

* Very expensive
* Takes weeks or months to procure
* Requires maintenance
* Scaling is difficult

---

# Cloud Computing

Instead of buying hardware,

Company simply rents infrastructure from Google.

Example:

```
Developer
      ↓
Google Cloud
      ↓
Virtual Machine
Database
Storage
Load Balancer
Networking
```

Resources are available within minutes.

---

# Cloud Service Providers (CSP)

Popular Cloud Providers:

* Google Cloud Platform (GCP)
* Amazon Web Services (AWS)
* Microsoft Azure
* Oracle Cloud (OCI)
* IBM Cloud
* DigitalOcean
* Linode (Akamai Cloud)

Market Share:

1. AWS
2. Azure
3. Google Cloud

---

# Google Cloud Free Tier

Google provides a free trial for beginners.

### Benefits

* $300 Free Credits
* Valid for 90 Days

You can learn:

* Compute Engine
* Cloud Storage
* IAM
* Networking
* Cloud SQL
* Kubernetes (GKE)
* BigQuery
* Logging
* Monitoring

---

## Requirements

You need:

* Gmail Account
* Mobile Number
* Credit/Debit Card

Important:

* International Transactions should be enabled.
* Recurring Payments should be enabled on the card.
* Google verifies your identity.
* Google usually places a small temporary authorization charge (later reversed).

You will not be charged unless:

* Free credits expire
* You upgrade to a paid account
* You create paid resources after the free trial

---

# Steps to Create a Free Tier GCP Account

### Step 1

Open:

**[https://console.cloud.google.com](https://console.cloud.google.com)**

---

### Step 2

Click

**Get Started for Free**

---

### Step 3

Sign in using your Gmail account.

---

### Step 4

Choose your country.

---

### Step 5

Accept Google's Terms and Conditions.

---

### Step 6

Enter your billing details:

* Name
* Address
* Phone Number

---

### Step 7

Add your Credit/Debit Card.

Ensure:

* International transactions are enabled.
* Recurring payments are enabled.

---

### Step 8

Google verifies your payment method.

---

### Step 9

Your billing account is created.

---

### Step 10

You receive:

* $300 Credits
* Valid for 90 Days

Now you can start using GCP.

---

# Google Cloud Console

After login,

You'll see:

* Navigation Menu (Hamburger Menu)
* Search Bar
* Project Selector
* Cloud Shell
* Notifications
* Billing
* IAM

---

# Navigation (Hamburger) Menu

The Navigation Menu contains all GCP services.

Examples:

* Compute Engine
* Cloud Storage
* Kubernetes Engine
* Cloud SQL
* VPC Network
* IAM
* Billing
* Monitoring
* Logging
* BigQuery
* Vertex AI

---

# Cloud Shell

Cloud Shell is a browser-based Linux terminal provided by Google Cloud.

Features:

* Pre-installed gcloud CLI
* kubectl
* Git
* Terraform
* Python
* Docker

Benefits:

* No installation required.
* Access from anywhere.
* Connected directly to your GCP account.

Typical commands:

```bash
gcloud config list

gcloud projects list

gcloud compute instances list
```

---

# What is Google Cloud Platform?

Google Cloud Platform (GCP) is Google's cloud computing platform.

It provides infrastructure and managed services to build, deploy, and scale applications.

Developers can:

* Build applications
* Test applications
* Deploy applications
* Monitor applications
* Scale applications automatically

Google runs these services on its highly secure, reliable, and globally distributed infrastructure.

---

# Real-world Example

Imagine you are developing a banking application.

Users want to:

* Check account balance
* Transfer money
* View transactions

The backend services run on GCP.

Example architecture:

```
Users

↓

Load Balancer

↓

Virtual Machines / GKE

↓

Application

↓

Cloud SQL

↓

Cloud Storage

↓

Monitoring
```

If millions of users log in simultaneously, GCP automatically scales resources.

---

# AI Example

Suppose you build an AI chatbot for a bank.

Customer asks:

"What is my account balance?"

The chatbot uses:

* Vertex AI
* RAG (Retrieval-Augmented Generation)
* Cloud Storage
* Cloud SQL

to retrieve and answer the user's question.

---

# Types of Cloud

## 1. Public Cloud

Infrastructure is owned by a cloud provider and shared among multiple customers.

Examples:

* AWS
* Azure
* GCP

Advantages:

* Low cost
* Easy to scale
* No hardware management

---

## 2. Private Cloud

Infrastructure is dedicated to a single organization.

Advantages:

* High security
* More control
* Custom configurations

Examples:

* VMware
* OpenStack

---

## 3. Hybrid Cloud

Combination of:

* On-Premises
* Public Cloud

Example:

Database remains on-premises, while the web application runs on GCP.

---

## 4. Multi-Cloud

Using multiple cloud providers.

Example:

* AWS
* Azure
* GCP

Reasons:

* Avoid vendor lock-in
* Disaster Recovery
* Cost optimization

---

# On-Premises

Infrastructure is located inside the company's own data center.

The company manages:

* Servers
* Storage
* Networking
* Security
* Cooling
* Power

---

# Essential Characteristics of Cloud Computing

## 1. On-demand Self-service

Provision resources using:

* Console
* CLI
* APIs
* Infrastructure as Code (Terraform)

No human intervention from the cloud provider is required.

---

## 2. Broad Network Access

Resources are accessible securely over the Internet from anywhere.

---

## 3. Resource Pooling

Cloud providers share physical infrastructure among many customers using multi-tenancy while keeping customer data isolated.

---

## 4. Rapid Elasticity

Resources can be increased or decreased automatically based on demand.

Example:

Traffic increases during a sale → Add more servers.

Traffic decreases → Remove unused servers.

---

## 5. Measured Service

Customers pay only for the resources they consume.

Billing is based on usage such as:

* CPU
* Memory
* Storage
* Network traffic

This is called the **Pay-as-you-Go** model.

---

# Billing Account

A Billing Account is used to pay for Google Cloud services.

One Billing Account can be linked to multiple GCP Projects.

Example:

```
Billing Account

      |

-------------------------

|           |          |

Project A  Project B  Project C
```

A project cannot use paid services unless it is linked to a billing account.

---

# Company Deployment Example (Very Important)

Suppose an e-commerce company wants to deploy its application on GCP.

## Step 1: Requirement Gathering

Understand:

* Number of users
* Application architecture
* High Availability needs
* Disaster Recovery requirements
* Security and compliance
* Expected traffic
* Budget

---

## Step 2: Infrastructure Design

Design the infrastructure:

* Regions
* Zones
* Networking
* Firewalls
* IAM
* Storage
* Databases
* Monitoring
* Backup

---

## Step 3: Select Regions

Choose the best geographic region based on users.

Example:

Users in India:

```
asia-south1 (Mumbai)
```

Users in Europe:

```
europe-west1
```

---

# Regions

A **Region** is a specific geographic location where Google Cloud operates data centers.

Examples:

* asia-south1 (Mumbai)
* us-central1 (Iowa)
* us-east1
* europe-west1
* australia-southeast1

Choose a region close to your users to reduce latency.

---

# Zones

A **Zone** is an isolated data center within a region.

Example:

```
Region

asia-south1

|

---------------------------------

|                |              |

Zone A          Zone B         Zone C

```

Example zones:

* asia-south1-a
* asia-south1-b
* asia-south1-c

Deploying resources across multiple zones improves availability.

---

# Primary Region

The main region where the application runs.

Example:

```
Primary

Mumbai
```

---

# High Availability (HA)

High Availability ensures the application continues running even if one zone or server fails.

Example:

```
Region

Mumbai

|

-------------

|           |

Zone A    Zone B

VM1       VM2

Load Balancer

```

If VM1 or Zone A fails, traffic is routed to VM2 in Zone B.

---

# Disaster Recovery (DR)

Disaster Recovery protects against complete regional failures.

Example:

```
Primary Region

Mumbai

↓

Disaster

↓

Secondary Region

Delhi / Singapore

```

Data is replicated to the secondary region, allowing services to continue if the primary region becomes unavailable.

---

# Hierarchy in GCP

Google Cloud resources are organized in a hierarchy:

```
Organization
    │
    ├── Folder (Optional)
    │      ├── Development
    │      ├── Testing
    │      └── Production
    │
    └── Project
            ├── Compute Engine
            ├── Cloud Storage
            ├── Cloud SQL
            ├── VPC Network
            └── IAM
```

### Organization

* Represents the entire company (for example, `company.com`).
* Central place to manage users, billing, and policies.

### Folder (Optional)

* Used to group related projects.
* Commonly organized by department or environment (Development, Testing, Production).

### Project

* The fundamental working unit in GCP.
* All resources (VMs, databases, buckets, networks) are created inside a project.
* Projects provide isolation for resources, IAM permissions, APIs, quotas, and billing.

---

# Project Creation (Very Important)

Every resource in GCP must belong to a project.

### Steps to create a project

1. Log in to the Google Cloud Console.
2. Click the **Project Selector** at the top.
3. Click **New Project**.
4. Enter:

   * Project Name
   * Organization (if applicable)
   * Folder (optional)
5. Click **Create**.
6. Wait a few seconds for the project to be provisioned.
7. Select the new project from the Project Selector.
8. Link the project to a Billing Account if you plan to use billable services.
9. Enable the required APIs (for example, Compute Engine API, Cloud Storage API).

### Best Practices

* Use meaningful project names (e.g., `ecommerce-dev`, `ecommerce-test`, `ecommerce-prod`).
* Separate Development, Testing, and Production into different projects.
* Apply least-privilege IAM roles.
* Use labels to organize resources.
* Set billing budgets and alerts to control costs.

These notes provide a solid foundation for understanding GCP and prepare you for hands-on topics such as Compute Engine, VPC Networking, IAM, Cloud Storage, Terraform, and Kubernetes.



# GCP Infrastructure, Hierarchy & Projects (Detailed Notes)

---

# 3. Infrastructure, Hierarchy & Projects

Before creating any resources in Google Cloud, it is important to understand where your infrastructure is physically located and how Google organizes cloud resources.

---

# Google Cloud Infrastructure

Google has data centers all over the world.

These data centers are grouped into:

* Regions
* Zones
* Points of Presence (PoPs)
* Content Delivery Network (CDN)

```
Google Cloud Infrastructure

                    Internet

                        │

        ┌────────────────────────────────┐
        │        Google Network          │
        └────────────────────────────────┘

        Regions
      ┌───────────────┐
      │ us-central1   │
      │ asia-south1   │
      │ europe-west1  │
      └───────────────┘

             │
             ▼

         Multiple Zones

      asia-south1-a
      asia-south1-b
      asia-south1-c
```

---

# Region

A **Region** is a geographical location where Google operates multiple data centers.

Examples

* us-central1 (Iowa)
* us-east1
* asia-south1 (Mumbai)
* europe-west1
* australia-southeast1

A region always contains multiple zones.

### Example

```
Region

asia-south1

Contains

asia-south1-a
asia-south1-b
asia-south1-c
```

---

# Zone

A **Zone** is an isolated data center inside a region.

Each zone has

* Independent power supply
* Independent cooling
* Independent networking
* Independent hardware

Because zones are isolated, if one zone fails, another zone can continue serving traffic.

Example

```
Region : asia-south1

--------------------------

Zone A

VM
Database

--------------------------

Zone B

VM
Database

--------------------------

Zone C

VM
Database
```

Google recommends deploying critical applications across multiple zones.

---

# Why do we need Multiple Zones?

Suppose your application runs only in

```
asia-south1-a
```

If that zone experiences

* Power failure
* Network issue
* Hardware issue

Your application becomes unavailable.

Instead, deploy in multiple zones.

```
asia-south1

     │

---------------------

│                  │

Zone A          Zone B

VM1             VM2

      │

 Load Balancer
```

If Zone A fails

Traffic automatically moves to Zone B.

This provides **High Availability (HA).**

---

# us-central1

Google's oldest and one of the largest regions.

Advantages

* Supports almost every Google Cloud service
* Often receives new features first
* Frequently used for labs and training
* Usually offers competitive pricing

For learning and practice, you can safely use **us-central1** unless your course specifies another region.

---

# Which Region should we choose?

Choose a region based on:

* User location
* Cost
* Compliance requirements
* Latency
* Available services

Example

| Users Location | Preferred Region     |
| -------------- | -------------------- |
| India          | asia-south1 (Mumbai) |
| USA            | us-central1          |
| Europe         | europe-west1         |
| Australia      | australia-southeast1 |

---

# Google Cloud Storage Locations

Not every Google Cloud resource is zonal.

Storage services can be configured with different location types.

---

## 1. Regional Resource

Data is stored inside one region.

Example

```
Mumbai Region

----------------

Zone A

Zone B

Zone C

```

Advantages

* Lowest latency
* Lowest cost
* Good for applications serving users in one geographic area

Example

Application deployed only in Mumbai.

Store data in

```
Regional Storage

asia-south1
```

---

## 2. Dual-Region Resource

Data is automatically replicated between two selected regions.

Example

```
Mumbai

        ⇅

Singapore
```

Advantages

* Better Disaster Recovery
* Low latency across two locations
* Higher availability

Suitable for banking, finance, and enterprise applications.

---

## 3. Multi-Regional Resource

Google stores copies across multiple regions within a large geographic area.

Example

```
Asia

Mumbai

Singapore

Tokyo

Seoul
```

Advantages

* Highest availability
* Global access
* Automatic replication
* Disaster protection

Used for

* Static websites
* Global applications
* Media streaming
* Frequently accessed files

---

# Comparison

| Type           | Replication      | Cost    | Availability | Use Case                |
| -------------- | ---------------- | ------- | ------------ | ----------------------- |
| Regional       | Single Region    | Low     | High         | Local applications      |
| Dual Region    | Two Regions      | Medium  | Very High    | Enterprise Applications |
| Multi Regional | Multiple Regions | Highest | Maximum      | Global Applications     |

---

# How do we decide Regional, Dual Region or Multi Region?

It depends on the application's requirements.

### Consider the following factors:

### 1. Cost

Regional is the least expensive.

Multi-region is more expensive due to replication.

---

### 2. Availability

Higher availability requires more replicated copies.

---

### 3. Disaster Recovery

If your application must survive an entire region failure,

choose

* Dual Region
* Multi Region

---

### 4. Performance

If users are only in India,

Regional (Mumbai)

is sufficient.

If users are worldwide,

Multi Region is better.

---

# High Availability (HA)

High Availability means

The application continues running even if one zone fails.

Example

```
Load Balancer

       │

-------------------

│                 │

VM1            VM2

Zone A        Zone B
```

If Zone A fails

Traffic automatically goes to Zone B.

---

# Disaster Recovery (DR)

Disaster Recovery protects against an entire regional failure.

Example

```
Primary Region

us-central1

          │

Replication

          │

Secondary Region

us-east1
```

If the whole primary region fails,

users are redirected to the DR region.

---

# Practice Recommendation

For labs and practice

Choose

```
Region

us-central1
```

Choose

```
Single Zone

us-central1-a
```

Reason

* Lower cost
* Faster deployment
* Sufficient for learning

For production,

deploy resources across multiple zones and regions for High Availability and Disaster Recovery.

---

# Google Cloud Hierarchy

Every resource in Google Cloud follows a hierarchy.

```
Organization

      │

Folder (Optional)

      │

Project

      │

Resources
```

Every Google Cloud resource must belong to a **Project**.

---

# 1. Organization

The Organization is the highest level in the Google Cloud hierarchy.

It usually represents a company.

Example

```
abcd.com
```

All projects and folders belong to the organization.

Responsibilities

* Centralized IAM
* Billing Management
* Security Policies
* Resource Organization

---

# 2. Folder (Optional)

Folders help organize projects.

Example

```
Organization

abcd.com

       │

---------------------------------

│              │              │

Development   Testing     Production
```

Benefits

* Easier management
* Apply IAM policies
* Organize departments
* Environment segregation

Folders are optional.

---

# 3. Project

Projects are the most important resource container.

Every resource is created inside a project.

Example

```
Organization

abcd.com

      │

Project

ecommerce-dev

      │

Resources

VM

Storage

Cloud SQL

Load Balancer
```

---

# Why do we create Multiple Projects?

Example

```
abcd.com

│

├── abcd-nonprod-project

├── abcd-prod-project

└── GenAI-project
```

---

## Non-Production Project

Used for

* Development
* Testing
* QA
* Staging

Benefits

* Safe experimentation
* Lower cost
* No impact on production

---

## Production Project

Used for live applications.

Benefits

* Separate billing
* Stronger security
* Restricted access
* Better monitoring

---

## GenAI Project

Dedicated for

* Vertex AI
* AI Models
* Chatbots
* Machine Learning
* RAG Applications

Keeping AI workloads in a separate project simplifies billing and access control.

---

# Why Separate Projects?

### 1. Resource Organization

Easy to identify resources.

```
Dev VM

Production VM

Testing VM
```

No confusion.

---

### 2. Billing Separation

Different teams can have separate budgets and billing reports.

Example

```
Development

₹20,000

Production

₹1,20,000
```

---

### 3. IAM Permissions

Developers may access only the Development project.

Production access can be restricted to administrators.

Example

```
Developer

↓

Dev Project

Administrator

↓

Production Project
```

This follows the **Principle of Least Privilege**.

---

# Project Creation

When you create a project, Google creates three identifiers.

These are frequently asked in interviews.

---

## 1. Project ID

Example

```
my-dev-project-123
```

Characteristics

* Globally Unique across all Google Cloud
* Chosen by the user during project creation
* Used in APIs, CLI, URLs, and automation
* **Cannot be changed (Immutable)**

---

## 2. Project Name

Example

```
Development Project
```

Characteristics

* Human-readable
* Does not need to be unique
* Chosen by the user
* **Can be changed later (Mutable)**

---

## 3. Project Number

Example

```
638521478963
```

Characteristics

* Numeric identifier
* Automatically generated by Google after project creation
* Globally Unique
* Used internally by Google services
* **Cannot be changed (Immutable)**

---

# Comparison Table

| Property       | Project ID      | Project Name    | Project Number           |
| -------------- | --------------- | --------------- | ------------------------ |
| Created By     | User            | User            | Google                   |
| Unique         | Yes (Global)    | No              | Yes (Global)             |
| Can be Changed | ❌ No            | ✅ Yes           | ❌ No                     |
| Used In        | APIs, CLI, URLs | Console Display | Internal Google Services |

---

# Important Interview Questions

### Q1. Can the Project ID be changed?

**Answer:** No. The Project ID is immutable after project creation.

### Q2. Can the Project Name be changed?

**Answer:** Yes. The Project Name is mutable and can be updated later.

### Q3. Who generates the Project Number?

**Answer:** Google Cloud automatically generates the Project Number after the project is successfully created.

### Q4. Can two projects have the same Project Name?

**Answer:** Yes. Project Names do not need to be unique.

### Q5. Can two projects have the same Project ID?

**Answer:** No. Project IDs must be globally unique across all Google Cloud.

---

## Note

* **Project ID** is created only once during project creation and **cannot be changed**.
* **Project Name** can be modified at any time.
* **Project Number** is assigned by Google after project creation and **cannot be changed**.

These concepts—Regions, Zones, High Availability, Disaster Recovery, Google Cloud Hierarchy, and Project identifiers—are fundamental GCP topics and are commonly asked in DevOps, Cloud Engineer, and SRE interviews.


============================================================================================================

# Google Cloud IAM (Identity and Access Management) - Complete Notes

---

# Google Cloud IAM (Identity and Access Management)

Imagine your company has a GCP project called:

```text
xxx-project
```

There are two employees:

* X (Developer)
* Y (QA Engineer)

Questions:

* How can X access the project?
* How can Y access the project?
* Who decides what they can do?
* How can we prevent unauthorized access?

The answer is **Google Cloud IAM (Identity and Access Management).**

---

# What is IAM?

IAM is a service that controls:

> **Who can do What on Which Resource**

This is the most important definition and is commonly asked in interviews.

### IAM = Who + Can Do What + On Which Resource

Example:

```text
Who?

Developer (Adarsha)

↓

Can Do What?

Create Virtual Machine

↓

On Which Resource?

Project: ecommerce-dev
```

---

# IAM Components

IAM consists of three main components:

```text
IAM

│

├── Who (Principal / Identity)

├── Can Do What (Role)

└── On Which Resource (Resource)
```

---

# 1. Who (Identity / Principal)

A **Principal** (or Identity) is the user, group, or service that requests access to Google Cloud resources.

There are two broad categories:

```text
Identity (Principal)

│

├── People Accounts (Humans)

└── Service Accounts (Machines)
```

---

# People Accounts (Human Users)

These are real people who log in to Google Cloud.

There are five types.

---

## 1. Personal Account

Example:

```text
adarsha@gmail.com

john@yahoo.com
```

Characteristics:

* Gmail account
* Non-Gmail email account
* Individual user
* Commonly used for learning and personal projects

Example:

```text
Developer

↓

adarsha@gmail.com

↓

Google Cloud Console
```

---

## 2. Google Workspace Account

Previously known as G Suite.

Example:

```text
adarsha@xyzcompany.com
```

Characteristics:

* Company-managed account
* Can access:

  * Gmail
  * Google Drive
  * Google Meet
  * Google Docs
  * Google Cloud

Example:

```text
Google Workspace

↓

xyzcompany.com

↓

Employee

↓

Google Cloud
```

Used by organizations for centralized identity management.

---

## 3. Cloud Identity Account

Cloud Identity provides identity management **without Google Workspace apps**.

Characteristics:

* Can access Google Cloud
* Cannot access Gmail, Drive, Docs, etc.
* Used when a company only needs Google Cloud access

Example:

```text
Cloud Identity

↓

Employee

↓

Google Cloud Only
```

---

## 4. Google Groups

Instead of assigning permissions individually, you can assign permissions to a group.

Example:

```text
Developers Group

developer@company.com

↓

Adarsha

Rahul

John

Anita
```

Assign one IAM role to the group, and every member receives that access.

Advantages:

* Easier management
* Centralized access control
* No need to assign roles individually

---

## 5. Special Identities

Google provides built-in special identities.

### allAuthenticatedUsers

Includes:

Every user authenticated with a Google account.

Example:

```text
Google Login

↓

Authenticated

↓

Access Allowed
```

---

### allUsers

Includes:

Everyone on the internet, even without logging in.

Example:

```text
Internet

↓

Anonymous User

↓

Access Resource
```

Common use case:

Making a website publicly accessible using a Cloud Storage bucket.

**Important:** Avoid granting sensitive permissions to `allUsers`, as it exposes resources publicly.

---

# Service Accounts (Machine Identity)

A **Service Account** is a special Google account used by applications, virtual machines, and services—not by humans.

Characteristics:

* Represents a machine or application
* Has no password
* Used for authentication between GCP services
* Uses IAM roles just like users

Example:

```text
Virtual Machine

↓

Service Account

↓

Cloud Storage
```

Instead of storing usernames and passwords inside an application, you assign a service account to it.

Real-world example:

```text
VM

↓

Service Account

↓

Cloud SQL
```

The VM securely accesses Cloud SQL without embedding credentials.

---

# IAM Principle (Who → Can Do What → On Which Resource)

Example:

```text
Who

Adarsha

↓

Role

Compute Admin

↓

Resource

Development Project
```

This means Adarsha can administer Compute Engine resources only within the Development Project.

---

# Can Do What? (Roles)

Roles define **what actions a principal can perform**.

A role is a **collection of permissions**.

Instead of assigning hundreds of individual permissions, Google groups them into roles.

### Important Interview Definition

> **Role = Collection of Permissions**

Example:

```text
Role

↓

Compute Admin

↓

Permissions

Create VM

Delete VM

Start VM

Stop VM

View VM
```

You request a **role**, not individual permissions.

---

# Types of IAM Roles

There are three types of roles:

```text
Roles

│

├── Primitive Roles

├── Predefined Roles

└── Custom Roles
```

---

# 1. Primitive Roles (Basic Roles)

These are the original project-wide roles provided by Google.

They apply broadly across a project.

Types:

* Owner
* Editor
* Viewer

---

## Owner (`roles/owner`)

The Owner role has almost unrestricted control over the project.

Capabilities:

* Create resources
* Delete resources
* Modify IAM policies
* Manage users
* Manage billing (when billing permissions are available)
* Enable/Disable APIs

Example:

```text
Owner

↓

Everything
```

**Use with caution** and assign to very few trusted administrators.

---

## Editor (`roles/editor`)

Editors can create and modify most resources but **cannot manage IAM policies** or perform certain billing administration tasks.

Capabilities:

* Create VMs
* Delete VMs
* Modify Storage
* Create Databases
* Update resources

Cannot:

* Grant or revoke IAM access
* Perform key IAM administrative actions

Example:

```text
Editor

↓

Create VM

Delete VM

Modify Storage

Cannot change IAM policies
```

---

## Viewer (`roles/viewer`)

Viewers have read-only access.

Capabilities:

* View VMs
* View Storage
* View Logs
* View Monitoring dashboards

Cannot:

* Create
* Delete
* Modify resources

Example:

```text
Viewer

↓

Read Only
```

---

# Primitive Role Comparison

| Role   | Read | Create | Update | Delete | IAM Management |
| ------ | ---- | ------ | ------ | ------ | -------------- |
| Owner  | ✅    | ✅      | ✅      | ✅      | ✅              |
| Editor | ✅    | ✅      | ✅      | ✅      | ❌              |
| Viewer | ✅    | ❌      | ❌      | ❌      | ❌              |

---

# 2. Predefined Roles

Google provides **service-specific** roles that follow the principle of least privilege.

Characteristics:

* More granular
* Managed by Google
* Updated automatically as services evolve
* Cannot be modified or deleted

Examples:

| Role                         | Purpose                            |
| ---------------------------- | ---------------------------------- |
| `roles/compute.admin`        | Full Compute Engine administration |
| `roles/compute.viewer`       | Read-only access to Compute Engine |
| `roles/storage.admin`        | Full Cloud Storage administration  |
| `roles/storage.objectViewer` | Read storage objects               |
| `roles/container.admin`      | GKE administration                 |
| `roles/cloudsql.admin`       | Cloud SQL administration           |

Example:

A developer only needs to create and manage VMs.

Instead of giving the broad **Editor** role, assign:

```text
roles/compute.admin
```

This grants permissions only for Compute Engine resources, improving security.

---

# 3. Custom Roles

Sometimes predefined roles don't exactly match business requirements.

In that case, create a **Custom Role**.

Characteristics:

* Created by your organization
* Combines only the required permissions
* Helps implement the principle of least privilege

Example:

A support engineer needs to:

* Start VM
* Stop VM
* View VM

But should **not** delete VMs.

You can create a custom role containing only those permissions.

```text
Custom Role

↓

Start VM

Stop VM

View VM
```

---

# IAM Role Comparison

| Feature     | Primitive | Predefined       | Custom                     |
| ----------- | --------- | ---------------- | -------------------------- |
| Created By  | Google    | Google           | Organization               |
| Scope       | Broad     | Service-specific | Organization-defined       |
| Granularity | Low       | High             | Very High                  |
| Editable    | No        | No               | Yes (by your organization) |
| Recommended | Rarely    | Yes              | When needed                |

---

# On Which Resource?

IAM roles can be assigned at different levels in the Google Cloud resource hierarchy.

Examples:

* Organization
* Folder
* Project
* Individual Resource (such as a VM, bucket, or Cloud SQL instance)

```text
Organization

↓

Folder

↓

Project

↓

Virtual Machine

↓

Cloud Storage Bucket

↓

Cloud SQL
```

Permissions inherited from a higher level apply to lower levels unless overridden by policy.

---

# Example Scenario

Project:

```text
ecommerce-dev
```

Users:

* Adarsha (Developer)
* Rahul (Tester)
* VM Service Account

Access:

| Principal          | Role                  | Resource             |
| ------------------ | --------------------- | -------------------- |
| Adarsha            | Compute Admin         | ecommerce-dev        |
| Rahul              | Viewer                | ecommerce-dev        |
| VM Service Account | Storage Object Viewer | Cloud Storage Bucket |

---

# GCP Pricing Calculator

Before creating resources, estimate the cost using the Google Cloud Pricing Calculator.

Official calculator:

**[https://cloud.google.com/products/calculator](https://cloud.google.com/products/calculator)**

You can estimate costs for:

* Virtual Machines
* Storage
* Cloud SQL
* Kubernetes Engine (GKE)
* Networking
* Load Balancers
* BigQuery
* Vertex AI

---

# Interview Questions

### Q1. What is IAM?

IAM is a service that controls **who can do what on which resource**.

### Q2. What is a Role?

A role is a **collection of permissions**.

### Q3. Difference between Editor and Owner?

* **Owner:** Can manage IAM policies and has broad administrative control.
* **Editor:** Can manage most resources but cannot administer IAM policies.

### Q4. What is a Service Account?

A service account is a machine identity used by applications and Google Cloud services to authenticate securely without user credentials.

### Q5. When should you use Groups?

Use groups when multiple users require the same permissions. Assign the IAM role once to the group instead of individually to each user.

### Q6. What is the difference between Primitive, Predefined, and Custom Roles?

* **Primitive:** Broad project-wide roles (Owner, Editor, Viewer).
* **Predefined:** Google-managed, service-specific roles with granular permissions.
* **Custom:** Organization-created roles with only the required permissions.

### Q7. What is the difference between `allUsers` and `allAuthenticatedUsers`?

* **allUsers:** Anyone on the internet, even without signing in.
* **allAuthenticatedUsers:** Any user authenticated with a Google account.

These IAM concepts are fundamental for GCP and are among the most frequently asked topics in Cloud Engineer, DevOps, and SRE interviews.


Absolutely. One of the best ways to understand **IAM** is through real company scenarios. Below are several hands-on examples that interviewers also like to ask.

---

# Hands-on Example 1: Give Developer Access to Create Virtual Machines

## Scenario

Your company has a project called:

```text
Project Name

ecommerce-dev
```

A developer named **Adarsha** joins the company.

His job is only to:

* Create VM
* Start VM
* Stop VM
* Delete VM

He should **not** access Storage, Billing, or IAM.

---

## Which Role?

Assign

```text
Compute Admin

roles/compute.admin
```

---

## Console Steps

1. Login to Google Cloud Console.

2. Select

```
ecommerce-dev
```

3. Go to

```
IAM & Admin

↓

IAM
```

4. Click

```
Grant Access
```

5. Enter

```
adarsha@gmail.com
```

6. Select Role

```
Compute Engine

↓

Compute Admin
```

7. Save.

---

## Result

Now Adarsha can

```
✅ Create VM

✅ Delete VM

✅ Start VM

✅ Stop VM

❌ Cannot modify IAM

❌ Cannot access Billing
```

---

# Hands-on Example 2: Tester Needs Read-only Access

## Scenario

QA Engineer Rahul only wants to verify whether the VM is running.

He should never modify anything.

---

Assign

```
Viewer

roles/viewer
```

---

Result

```
Rahul

↓

Can View

VM

Storage

Logs

Monitoring

↓

Cannot

Create VM

Delete VM

Modify VM
```

---

# Hands-on Example 3: Storage Team

Storage administrator only manages buckets.

Don't give Editor.

Instead assign

```
Storage Admin

roles/storage.admin
```

Result

```
Storage Bucket

Create Bucket

Delete Bucket

Upload Files

Download Files

Cannot Create VM
```

---

# Hands-on Example 4: Kubernetes Team

A Kubernetes administrator should only manage GKE clusters.

Assign

```
Kubernetes Engine Admin

roles/container.admin
```

He can

```
Create Cluster

Delete Cluster

Upgrade Cluster

Node Pool

Pods

Deployments

Services

Cannot manage Cloud SQL
```

---

# Hands-on Example 5: Database Administrator

DBA should manage Cloud SQL only.

Assign

```
Cloud SQL Admin

roles/cloudsql.admin
```

He can

```
Create Database

Backup

Restore

Delete Database

Cannot Create VM
```

---

# Hands-on Example 6: Group Example

Suppose your company has 20 developers.

Instead of giving permissions individually

Create Group

```
developers@xyz.com
```

Members

```
Adarsha

Rahul

John

Anita

Ram
```

Assign

```
Compute Admin
```

to the group.

Now

```
developers@xyz.com

↓

Compute Admin

↓

Everyone gets VM access
```

Tomorrow if another developer joins

Simply add him into the group.

No IAM changes are required.

---

# Hands-on Example 7: Service Account

## Scenario

A VM wants to store backups in Cloud Storage.

Should we hardcode Gmail credentials?

❌ No.

Instead

Create Service Account

```
backup-sa
```

Assign

```
Storage Object Admin
```

Attach it to the VM.

```
VM

↓

Service Account

↓

Cloud Storage
```

Now

The VM automatically authenticates to Cloud Storage.

---

# Hands-on Example 8: Project-level Permission

Suppose there are two projects.

```
Company

│

├── ecommerce-dev

└── ecommerce-prod
```

Developer

```
Adarsha
```

Needs access only to

```
ecommerce-dev
```

Give

```
Compute Admin

↓

Only on ecommerce-dev
```

Result

```
Development Project

Create VM

Delete VM

↓

Production

No Access
```

---

# Hands-on Example 9: Organization Level

Company

```
xyz.com
```

Has 300 projects.

Security Team needs Viewer access to every project.

Instead of assigning Viewer on every project,

Assign

```
Viewer

↓

Organization Level
```

Automatically

```
Organization

↓

Folder

↓

Projects

↓

Resources
```

All inherit Viewer permission.

---

# Hands-on Example 10: Custom Role

Developer needs only

```
Start VM

Stop VM

View VM
```

He should NOT

```
Delete VM

Create VM
```

Create a custom role.

```
Custom Role

↓

compute.instances.start

compute.instances.stop

compute.instances.get

compute.instances.list
```

Assign this role.

Now he cannot delete production VMs accidentally.

---

# Hands-on Example 11: Public Website using `allUsers`

You upload a website to a Cloud Storage bucket and want anyone on the internet to access it.

Grant the bucket the following principal:

```
Principal:
allUsers

Role:
Storage Object Viewer
```

Result:

```
Internet Users
      ↓
Cloud Storage Bucket
      ↓
Read Website Files
```

Everyone can view the website without logging in.

---

# Hands-on Example 12: Internal Company Portal using `allAuthenticatedUsers`

Your company hosts internal documentation on a Cloud Storage bucket.

Grant:

```
Principal:
allAuthenticatedUsers

Role:
Storage Object Viewer
```

Result:

```
Google Account User
      ↓
Login Required
      ↓
Can Read Documents
```

Anonymous users cannot access the bucket.

---

# Mini Lab (Practice Exercise)

### Objective

Create a new project and grant a developer permission to manage VMs.

### Steps

1. Create a project:

   ```
   Project Name: demo-dev
   ```

2. Open:

   ```
   IAM & Admin → IAM
   ```

3. Click:

   ```
   Grant Access
   ```

4. Enter a test email (or another Google account you own).

5. Assign the role:

   ```
   Compute Engine → Compute Admin
   ```

6. Save the changes.

7. Sign in with the second account and verify that it can:

   * Create a VM
   * Start/Stop the VM
   * Delete the VM

8. Verify that the same account **cannot**:

   * Open Billing and make changes.
   * Add or remove IAM members.

This exercise demonstrates the core IAM concept:

> **Who** (the second user) → **Can do What** (manage Compute Engine VMs) → **On Which Resource** (the `demo-dev` project).

Practicing these scenarios in your own GCP account will make IAM concepts much easier to understand and prepare you well for interviews.


# GCP IAM Primitive Roles (Owner, Editor, Viewer) – Complete Hands-on Lab

This lab simulates how a company manages access for different employees.

---

# Company Scenario

Assume your company is **ABC Technologies**.

You have created one GCP project.

```
Project Name

abc-dev-project
```

Three employees joined the company.

| Employee | Role in Company     |
| -------- | ------------------- |
| Adarsha  | Cloud Administrator |
| Rahul    | DevOps Engineer     |
| Anjali   | Auditor             |

Now the manager asks:

* Adarsha should have complete control.
* Rahul should create and manage infrastructure.
* Anjali should only view resources.

This is where IAM comes into the picture.

---

# Step 1: Create Project

Login

```
https://console.cloud.google.com
```

Click

```
Project Dropdown

↓

New Project
```

Enter

```
Project Name

abc-dev-project
```

Click

```
Create
```

Wait until the project is created.

---

# Step 2: Open IAM

Go to

```
Navigation Menu

↓

IAM & Admin

↓

IAM
```

You will see something similar to

```
Principal                    Role

your-email@gmail.com         Owner
```

Since you created the project, Google automatically assigns you the **Owner** role.

---

# What does Owner mean?

Owner means

```
I own this project.

I can

Create VM

Delete VM

Create Storage

Delete Storage

Create Database

Delete Database

Manage Billing

Manage IAM

Delete Project

Enable APIs

Disable APIs

Everything
```

---

# Hands-on 1: Add Owner

Click

```
Grant Access
```

Enter

```
adarsha@gmail.com
```

Choose

```
Basic

↓

Owner
```

Click

```
Save
```

Now Adarsha becomes an Owner.

---

# Login as Adarsha

Adarsha logs into GCP.

He can

✅ Create VM

✅ Delete VM

✅ Create Storage

✅ Delete Storage

✅ Create Database

✅ Add Users

✅ Remove Users

✅ Enable Billing

✅ Disable Billing

✅ Delete Project

Everything works.

---

## Verify Owner Access

Try these actions:

### Compute Engine

```
Create VM

Delete VM

Stop VM

Start VM
```

Works ✅

---

### Cloud Storage

```
Create Bucket

Delete Bucket

Upload Files

Delete Files
```

Works ✅

---

### IAM

Go to

```
IAM

↓

Grant Access
```

Can add another user.

Works ✅

---

### Billing

Go to

```
Billing
```

Can modify billing account.

Works ✅

---

### Delete Project

Go to

```
Project Settings

↓

Shutdown Project
```

Possible.

Works ✅

---

# Summary of Owner

```
Owner

↓

Everything

↓

Including IAM

↓

Including Billing
```

This role should be given only to trusted administrators.

---

# Hands-on 2: Editor Role

Suppose Rahul joins the DevOps team.

He deploys applications daily.

He needs

* Create VM
* Delete VM
* Create Bucket
* Create Database

But

He should NOT manage users.

---

Click

```
Grant Access
```

Enter

```
rahul@gmail.com
```

Choose

```
Basic

↓

Editor
```

Click

```
Save
```

---

# Login as Rahul

Rahul logs into the project.

---

### Test 1

Create VM

```
Compute Engine

↓

Create Instance
```

Works ✅

---

### Test 2

Delete VM

Works ✅

---

### Test 3

Create Storage Bucket

Works ✅

---

### Test 4

Delete Bucket

Works ✅

---

### Test 5

Create Cloud SQL

Works ✅

---

### Test 6

Enable APIs

Usually works if permitted within the project context.

---

### Test 7

Open IAM

Try

```
Grant Access
```

Result

❌ Permission Denied

Editor cannot change IAM policies.

---

### Test 8

Try removing Adarsha

```
IAM

↓

Delete User
```

Result

❌ Permission Denied

---

### Test 9

Billing

Open

```
Billing
```

Cannot perform billing administration.

---

# Summary of Editor

Editor can

```
Create VM

Delete VM

Storage

Database

Load Balancer

Cloud SQL

Networking
```

Editor cannot

```
Manage IAM

Billing Administration
```

---

# Hands-on 3: Viewer Role

Anjali is an Auditor.

She only checks resources.

She should never modify anything.

---

Grant

```
Viewer
```

to

```
anjali@gmail.com
```

---

Login as Anjali.

---

### Test 1

Open Compute Engine.

VM list is visible.

Works ✅

---

### Test 2

Click

```
Create VM
```

Result

```
Permission Denied
```

---

### Test 3

Delete VM

```
Permission Denied
```

---

### Test 4

Cloud Storage

View bucket

Works ✅

---

Delete bucket

```
Permission Denied
```

---

### Test 5

Cloud SQL

View instance

Works ✅

---

Delete instance

```
Permission Denied
```

---

### Test 6

IAM

View users

Works ✅

---

Grant Access

```
Permission Denied
```

---

### Test 7

Billing

Can view billing information if granted separate billing viewer permissions, but cannot modify billing using the Viewer project role alone.

---

# Summary of Viewer

Viewer can

```
View VM

View Storage

View SQL

View Network

View Logs

View Monitoring

View IAM
```

Viewer cannot

```
Create

Delete

Modify

Update
```

---

# Real Company Example

Suppose your company has

```
abc.com
```

Employees

```
CEO

Cloud Admin

DevOps

Developer

Tester

Auditor

Intern
```

Roles might be assigned like this:

| Employee      | Role                                                                               |
| ------------- | ---------------------------------------------------------------------------------- |
| Cloud Admin   | Owner                                                                              |
| Senior DevOps | Editor (or preferably specific predefined roles like Compute Admin, Storage Admin) |
| Developer     | Editor (or predefined service roles depending on responsibility)                   |
| Tester        | Viewer                                                                             |
| Auditor       | Viewer                                                                             |
| Intern        | Viewer                                                                             |

> **Best Practice:** In production, avoid using **Owner** and **Editor** unless absolutely necessary. Prefer **predefined roles** (for example, `roles/compute.admin` or `roles/storage.admin`) because they follow the **principle of least privilege**.

---

# Comparison Table

| Feature                | Owner | Editor | Viewer |
| ---------------------- | :---: | :----: | :----: |
| View Resources         |   ✅   |    ✅   |    ✅   |
| Create VM              |   ✅   |    ✅   |    ❌   |
| Delete VM              |   ✅   |    ✅   |    ❌   |
| Create Bucket          |   ✅   |    ✅   |    ❌   |
| Delete Bucket          |   ✅   |    ✅   |    ❌   |
| Create Cloud SQL       |   ✅   |    ✅   |    ❌   |
| Delete Cloud SQL       |   ✅   |    ✅   |    ❌   |
| Manage IAM             |   ✅   |    ❌   |    ❌   |
| Grant Access           |   ✅   |    ❌   |    ❌   |
| Remove Users           |   ✅   |    ❌   |    ❌   |
| Billing Administration |   ✅*  |    ❌   |    ❌   |
| Delete Project         |   ✅   |    ❌   |    ❌   |

*Billing actions may also require permissions on the billing account itself.

---

# Interview Questions

### 1. What is the difference between Owner and Editor?

* **Owner** can manage resources **and** IAM policies (and has broad administrative capabilities).
* **Editor** can manage most resources but **cannot** manage IAM policies or perform billing administration.

---

### 2. Why is Viewer used?

Viewer provides **read-only access**, making it suitable for auditors, managers, or support teams who only need to inspect resources.

---

### 3. Why are Primitive Roles not recommended in production?

Primitive roles are very broad. They often grant more permissions than users need, increasing security risk. Production environments should generally use **predefined** or **custom** roles that provide only the required permissions.




===============================================================

IAM Policy Role Binding 

SDK - Automate  the creation of GCP Resources

You can connect to gcloud shell and perform / or / you can download the GCP SDK in you local 

steps (Details)


gcloud compute instances list 

to switch between the project

gcloud config set project 'projectID'


gcloud config list (it will give current details)(To varify in which project we are)



This screenshot is about **GCP IAM Role Management using `gcloud` commands**. Since you're learning GCP DevOps, this is a very important topic for interviews and real-world projects.

The scenarios covered are:

1. **Create a Custom IAM Role using a YAML file**
2. Verify the created role using `gcloud` and the Google Cloud Console.
3. Create a Custom IAM Role directly from the command line.
4. Add permissions to an existing custom role.
5. Remove permissions from an existing custom role.
6. Verify the updated role.

The first command shown is:

```bash
PROJECT_ID=$(gcloud config get-value project)
```

### What does this command do?

It stores your currently selected GCP project ID into a shell variable.

Suppose your active project is:

```
my-dev-project-123
```

Then after running:

```bash
PROJECT_ID=$(gcloud config get-value project)
```

the variable contains:

```bash
echo $PROJECT_ID
```

Output:

```text
my-dev-project-123
```

Instead of typing the project ID repeatedly, you can simply use:

```bash
--project=$PROJECT_ID
```

---

## Why do we need a Custom IAM Role?

Google provides predefined roles such as:

* Viewer
* Editor
* Owner

But sometimes these roles provide **too many permissions**.

Example:

Suppose your company has a junior DevOps engineer.

They should only be able to:

* View Compute Engine VMs
* Start VMs
* Stop VMs

They **should not** be able to:

* Delete VMs
* Create networks
* Delete disks

In this case, you create a **Custom IAM Role** containing only the required permissions.

This follows the **Principle of Least Privilege**, which is a common interview topic.

---

## What we'll do in a hands-on demo

We'll build this from scratch:

```
Project
│
├── Custom Role
│      ├── compute.instances.get
│      ├── compute.instances.list
│      ├── compute.instances.start
│      └── compute.instances.stop
│
└── User
        │
        └── Assigned this custom role
```

The user will be able to:

✅ View VMs

✅ Start VMs

✅ Stop VMs

❌ Delete VMs

---

Since you've been asking for **real DevOps hands-on practice** rather than just theory, we can do a complete lab next where we:

1. Create a new GCP project.
2. Create a custom IAM role using a YAML file.
3. Assign it to a test user.
4. Verify permissions from the Console and `gcloud`.
5. Modify the role by adding and removing permissions.
6. Compare it with predefined roles like Viewer, Editor, and Owner.

This is the same workflow you'll encounter in enterprise GCP environments.



to get the project is (Current shell active)
gcloud config get-value project

PROJECT_ID=$(gcloud config get-value project)
echo $PROJECT_ID    usefull when you do the automation

Now how to create the Custom Role 
      1. Yaml File
      2. gcloud Arguments

gcloud compute instance --arguments

arguments are passed with '--'  like --zone --limit --cpu
don't try to remember just go with document


Excellent! This is **Step 2: Creating a Custom IAM Role using a YAML file**. Let's understand every line as if you're working in a real company.

---

# Step 2: Create the YAML file

Create a file named:

```bash
iam-roles.yaml
```

Inside it, write:

```yaml
title: "i27customrole1"
description: "Custom Role to create Instances"
stage: "GA"

includedPermissions:
  - compute.instances.create
  - compute.acceleratorTypes.list
  - compute.disks.create
  - compute.disks.list
  - compute.instances.list
  - compute.instances.setServiceAccount
  - compute.machineTypes.list
  - compute.networks.get
  - compute.networks.list
  - compute.projects.get
  - compute.regions.list
  - compute.subnetworks.get
  - compute.subnetworks.list
  - compute.subnetworks.use
  - compute.subnetworks.useExternalIp
  - compute.zones.list
```

---

# Why do we create a YAML file?

Think of the YAML file as a **blueprint**.

Instead of typing 20–30 permissions on the command line every time, we define them once in a YAML file.

Later, GCP reads this file and creates the custom role.

Just like Terraform uses `.tf` files, IAM uses YAML for defining custom roles.

---

# Understanding each field

## 1. title

```yaml
title: "i27customrole1"
```

This is the **display name** shown in the Google Cloud Console.

For example:

```
IAM
↓

Custom Roles

i27customrole1
```

It should be meaningful.

Example:

```
VM Creator
Database Operator
ReadOnlyStorage
DevOpsAdmin
```

---

## 2. description

```yaml
description: "Custom Role to create Instances"
```

This tells other administrators what the role is for.

Example:

```
Allows creating Compute Engine VM instances.
```

In large companies with hundreds of custom roles, the description helps identify the role's purpose.

---

## 3. stage

```yaml
stage: "GA"
```

`GA` stands for **General Availability**, meaning the role is ready for production use.

Other stages include:

| Stage    | Meaning                        |
| -------- | ------------------------------ |
| ALPHA    | Early testing                  |
| BETA     | Testing before production      |
| GA       | Stable and production-ready    |
| DISABLED | Role exists but cannot be used |

Most production environments use **GA**.

---

# 4. includedPermissions

This is the most important section.

Every permission begins with a service name, such as:

```
compute
storage
bigquery
cloudsql
pubsub
```

Followed by the specific action.

Example:

```
compute.instances.create
```

Break it down:

```
compute
   ↓
Compute Engine

instances
   ↓
Virtual Machine

create
   ↓
Create VM
```

So it means:

> Allow the user to create Compute Engine VM instances.

---

## Another example

```yaml
compute.disks.create
```

Breakdown:

```
compute
↓

disks
↓

create
```

Meaning:

> Allow creating persistent disks.

---

## Another

```yaml
compute.instances.list
```

Meaning:

> View the list of VM instances.

---

## Another

```yaml
compute.networks.get
```

Meaning:

> View details of VPC networks.

---

## Another

```yaml
compute.subnetworks.use
```

Meaning:

> Allow attaching a VM to a subnet.

Without this permission, VM creation will fail because a VM must connect to a network.

---

## Another

```yaml
compute.subnetworks.useExternalIp
```

Meaning:

> Allow assigning an external (public) IP address to a VM.

Without this permission, users could create VMs but would not be able to assign public IPs.

---

## Another

```yaml
compute.machineTypes.list
```

Allows viewing available machine types, such as:

* e2-micro
* e2-small
* n2-standard-2
* c3-standard-4

This is needed when selecting a machine type during VM creation.

---

## Another

```yaml
compute.zones.list
```

Allows listing available zones, for example:

```
asia-south1-a
asia-south1-b
us-central1-a
```

---

# Real-world workflow

Imagine your company hires a new DevOps engineer.

The engineer needs to:

* Create VMs
* Create disks
* Attach networks
* View machine types
* View regions

But should **not** be able to:

* Delete VMs
* Delete disks
* Delete VPCs
* Delete projects

You create a custom role containing only the required permissions:

```
Developer
        │
        ▼
Custom Role
        │
        ├── Create VM ✔
        ├── Create Disk ✔
        ├── View Network ✔
        ├── View Regions ✔
        └── Delete VM ✘
```

This follows the **Principle of Least Privilege**, a key security practice.

---

### Next Step

After creating `iam-roles.yaml`, the next step is to run a `gcloud` command that reads this file and creates the custom IAM role in your GCP project. We can go through that command line by line and verify the role afterward.




mkdir 1808
cd 1808
vi iam-roles.yaml 

edit iam-roles.yaml   it same like vscode it will open


vi iam-roles.yaml 

```
title: "i27customrole1"
description: "Custom Role to create Instances"
stage: "GA"
includedPermissions:
  - compute.instances.create 
  - compute.acceleratorTypes.list
  - compute.disks.create
  - compute.disks.list
  - compute.instances.create
  - compute.instances.list
  - compute.instances.setServiceAccount
  - compute.machineTypes.list
  - compute.networks.get
  - compute.networks.list
  - compute.projects.get
  - compute.regions.list
  - compute.subnetworks.get
  - compute.subnetworks.list
  - compute.subnetworks.use
  - compute.subnetworks.useExternalIp
  - compute.zones.list

```

pass the yaml file via gcloud cmd , to apply the chages 

gcloud iam  roles create 127customerole1 --file=iam-roles.yaml 

you will find a error 

gcloud iam  roles create 127customerole1 --file=iam-roles.yaml --project <projectID>

it will execute 

How to fetch the roles the details 
gcloud iam roles describe 127customerole1 --project <projectID>

eTag == default by the Google

Other than the yaml file,The simplest file is.

# Available stages for roles:
# ALPHA: Role is in early testing phase, may change.
# BETA: Role is more stable but still subject to changes.
# GA (General Availability): Role is fully available and stable for use.

gcloud iam roles create i27customrole4 \
  --project $PROJECT_ID \
  --permissions=compute.instances.create,compute.acceleratorTypes.list,compute.disks.create \
  --title="i27customrole2" \
  --description="Custom Role 2 from arguments" \
  --stage="GA"


How to edit and add the permission to the custome role 
via update command 

gcloud iam role update  (give example for this)

gcloud iam roles update i27customrole4     --project $PROJECT_ID     --add-permissions="compute.networks.get"

To proficient in Gcloud Terraform you must be effiencient the console.

IAM  Role Binding ??
Bind one or more principle(identity/member) to an individual iam role.


Role Binding 
  Role
     Storage.admin 
     Principle 
        siva@gmail.como
        support@gmail.com 
        mona@gmail.com

   Role 
     Compute.admin 
     principle 
        siva@gmail.como
        support@gmail.com 
        mona@gmail.com@g

overall this is called role biniding 


Overview of IAM Policies in GCP
In Google Cloud Platform (GCP), policies are a set of rules that define who can access which resources and what actions they can perform on those resources. Policies are critical for managing and securing access to cloud resources.

Key Components of a GCP Policy:
Members: The identities (users, groups, service accounts, etc.) that request access to resources.

Examples: user:example@gmail.com, serviceAccount:my-sa@my-project.iam.gserviceaccount.com, group:devops@example.com
Roles: Define a set of permissions that determine what actions a member can perform on a resource.

Examples: roles/viewer (read-only access), roles/editor (read/write access), roles/owner (full control)
Permissions: Each role consists of a set of permissions, which are fine-grained actions that can be performed on specific resources (like viewing, creating, or deleting resources).

Resources: The GCP entities to which the policies apply, such as projects, compute instances, storage buckets, etc.

Bindings: A policy is made up of one or more bindings, each binding connects a member to a role for a specific resource


#### Step 0: Get the Dynamic Project ID
#Retrieve the active project ID dynamically from your gcloud configuration:
PROJECT_ID=$(gcloud config get-value project)

#### Step 1: User Tries to Access GCS without Appropriate Permissions

- **User**: `support@gcpbatch22.in`
- **Project**: A GCP project with the ID `your-project-id`
- **Resource**: A Google Cloud Storage (GCS) bucket in the project.
- **Pre-access**: Make sure `support` has Compute Admin Access only and no other access.

**support**, who is part of the GCP project `your-project-id`, logs into the GCP Console using his account (`support@gcpbatch22.in`) and tries to access a GCS bucket in the project. However, support cannot access the bucket because he hasn’t been assigned any roles that permit GCS access.

#### Step 2: No Access to GCS

support is unable to access the GCS bucket because, by default, he only has the roles and permissions explicitly granted to him. In this case, support needs a specific role, such as `roles/storage.objectViewer` or `roles/storage.admin`, to interact with GCS.

#### Step 3: Investigating the Issue

To understand why support cannot access the GCS bucket, we need to check the current IAM policies associated with the project. This will allow us to see which roles are assigned to support.

##### Command to List IAM Policies:

```bash
gcloud projects get-iam-policy $PROJECT_ID


Create a bucket and login via support gmail and now see he is able to see the bucket that we created 


How to implement the Policy 
  we need the policy 


gcloud projects get-iam-policy $PROJECT_ID 
gcloud projects get-iam-policy $PROJECT_ID --format json 

you will get the bindings. I gives who is having the access at the project level

gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="user:support@gcpbatch22.in" \
    --role="roles/storage.admin"


Now you can see the bucket 



---

### **Introduction: What You Will Learn**

In this guide, we will cover how to manage **IAM policies** in Google Cloud Platform (GCP) by working with users to grant and revoke permissions on resources. Specifically, you will learn how to:

1. Investigate and manage access to **Google Cloud Storage (GCS)** for a user.
2. Add and remove **IAM policy bindings** to grant appropriate permissions.

---

### **Overview of IAM Policies in GCP**

In Google Cloud Platform (GCP), **policies** are a set of rules that define who can access which resources and what actions they can perform on those resources. Policies are critical for managing and securing access to cloud resources.

#### Key Components of a GCP Policy:
1. **Members**: The identities (users, groups, service accounts, etc.) that request access to resources.
   - Examples: `user:example@gmail.com`, `serviceAccount:my-sa@my-project.iam.gserviceaccount.com`, `group:devops@example.com`

2. **Roles**: Define a set of permissions that determine what actions a member can perform on a resource.
   - Examples: `roles/viewer` (read-only access), `roles/editor` (read/write access), `roles/owner` (full control)

3. **Permissions**: Each role consists of a set of permissions, which are fine-grained actions that can be performed on specific resources (like viewing, creating, or deleting resources).

4. **Resources**: The GCP entities to which the policies apply, such as projects, compute instances, storage buckets, etc.

5. **Bindings**: A policy is made up of one or more bindings, each binding connects a **member** to a **role** for a specific **resource**.

---

### **Scenario: Managing Access to GCS for a User**


```bash
#### Step 0: Get the Dynamic Project ID
#Retrieve the active project ID dynamically from your gcloud configuration:
PROJECT_ID=$(gcloud config get-value project)

#### Step 1: User Tries to Access GCS without Appropriate Permissions

- **User**: `akash@gcpbatch22.in`
- **Project**: A GCP project with the ID `your-project-id`
- **Resource**: A Google Cloud Storage (GCS) bucket in the project.
- **Pre-access**: Make sure `akash` has Compute Admin Access only and no other access.

**akash**, who is part of the GCP project `your-project-id`, logs into the GCP Console using his account (`akash@gcpbatch22.in`) and tries to access a GCS bucket in the project. However, akash cannot access the bucket because he hasn’t been assigned any roles that permit GCS access.

#### Step 2: No Access to GCS

akash is unable to access the GCS bucket because, by default, he only has the roles and permissions explicitly granted to him. In this case, akash needs a specific role, such as `roles/storage.objectViewer` or `roles/storage.admin`, to interact with GCS.

#### Step 3: Investigating the Issue

To understand why akash cannot access the GCS bucket, we need to check the current IAM policies associated with the project. This will allow us to see which roles are assigned to akash.

##### Command to List IAM Policies:

```bash
gcloud projects get-iam-policy $PROJECT_ID
```

- **`$PROJECT_ID`**: The project ID where the GCS bucket exists. You can retrieve it dynamically with:

  ```bash
  PROJECT_ID=$(gcloud config get-value project)
  ```

By listing the current IAM policies, we can verify that akash does not have any roles that allow him to interact with the GCS bucket, such as `roles/storage.objectViewer`.

---

### **View IAM Policy in Different Formats**

#### View IAM Policy in JSON Format:
```bash
gcloud projects get-iam-policy $PROJECT_ID --format=json
```

#### View IAM Policy in YAML Format:
```bash
gcloud projects get-iam-policy $PROJECT_ID --format=yaml
```

---

### **Granting Full Access to akash with `roles/storage.admin`**

#### Step 4: Granting Full Access to akash

To allow **akash** (`akash@gcpbatch22.in`) full access to manage the Google Cloud Storage bucket, we will grant him the **Storage Admin** role, which provides full control over the bucket and its contents.

##### Command to Add GCS Admin Access for akash:

```bash
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="user:akash@gcpbatch22.in" \
    --role="roles/storage.admin"
```

- **`--member="user:akash@gcpbatch22.in"`**: Specifies the user who needs the role.
- **`--role="roles/storage.admin"`**: Grants full control over Cloud Storage, including the ability to modify objects and permissions.

#### Step 5: Verify the Role Assignment

Once you've granted the `storage.admin` role, verify that the policy has been successfully updated by checking the project's IAM policies.

##### Command to Verify the Policy:

```bash
gcloud projects get-iam-policy $PROJECT_ID --format=yaml
```

#### Step 6: akash Tries to Access GCS Again

With the `roles/storage.admin` role assigned, akash now has full control over the GCS bucket. He can:
- Create new objects in the bucket.
- Delete or modify existing objects.
- Change permissions for the bucket or its contents.

akash should log back into the GCP Console and verify that he can perform all of these actions in the GCS bucket.


      1. Create a SVC account using cli 
      2. Create a key to the SVC account using cli 
      3. Assign storage admin role to the SVC account from cli 










============================================================================================
I went through your notes. They cover **GCP IAM Custom Roles, IAM Policy Bindings, and gcloud CLI**, which are very important topics for GCP Cloud Engineer, DevOps, and SRE interviews. 

Below are **detailed interview-quality notes** that are much easier to understand and remember.

---

# GCP IAM (Identity and Access Management)

## What is IAM?

IAM (Identity and Access Management) is a service that controls:

* **Who** can access GCP resources.
* **What** they can access.
* **What actions** they can perform.

Example:

```
Adarsha
     ↓
Can access
     ↓
Compute Engine
     ↓
Only Start and Stop VM
```

Without IAM, anyone in the project could perform every action, which is a security risk.

---

# Why is IAM Important?

Suppose your company has three employees.

```
Admin
Developer
Support Engineer
```

Should all of them delete VMs?

No.

Different people require different permissions.

Example:

| User      | Permissions        |
| --------- | ------------------ |
| Admin     | Full Control       |
| Developer | Create VM, View VM |
| Support   | View Logs          |

This follows the

> Principle of Least Privilege (PoLP)

which means

**Give only the permissions required to perform the job and nothing more.**

This is one of the most frequently asked interview questions.

---

# Components of IAM

There are five important components.

```
IAM

├── Members
├── Roles
├── Permissions
├── Resources
└── Policies
```

---

## 1. Member (Identity)

A member is the identity requesting access.

Examples

```
User
Group
Service Account
Domain
```

Example

```
user:adarsha@gmail.com

group:devops@example.com

serviceAccount:terraform@project.iam.gserviceaccount.com
```

Think of a Member as:

**WHO wants access?**

---

## 2. Resource

The object to which access is granted.

Examples

```
Project

VM

Cloud Storage Bucket

Cloud SQL

BigQuery Dataset
```

Example

```
Compute VM

storage bucket

Cloud SQL instance
```

---

## 3. Permission

Permission is the smallest level of access.

Examples

```
compute.instances.create

compute.instances.delete

storage.objects.create

storage.objects.delete
```

Each permission allows one action.

Example

```
compute.instances.start
```

Means

Start VM only.

---

## 4. Role

A Role is a collection of permissions.

Example

```
Role

↓

Permissions

↓

compute.instances.get

compute.instances.list

compute.instances.start

compute.instances.stop
```

Instead of assigning 100 permissions individually, Google groups them into Roles.

---

## Types of Roles

There are three types.

### 1. Basic Roles

```
Viewer

Editor

Owner
```

Viewer

Read Only

Editor

Read + Write

Owner

Everything

---

### 2. Predefined Roles

Google already created them.

Examples

```
roles/compute.admin

roles/storage.admin

roles/cloudsql.admin

roles/viewer
```

These are used most frequently.

---

### 3. Custom Roles

Created by your organization.

Example

```
Company wants

Create VM

Start VM

Stop VM

Nothing else
```

Create a Custom Role.

---

# Why Create a Custom Role?

Suppose a junior DevOps engineer should only

✔ Create VM

✔ View VM

✔ Start VM

✔ Stop VM

But should NOT

❌ Delete VM

❌ Delete VPC

❌ Delete Project

So create

```
Custom Role

compute.instances.create

compute.instances.list

compute.instances.start

compute.instances.stop
```

This improves security.

---

# Useful gcloud Commands

## Check Active Project

```
gcloud config get-value project
```

Output

```
dev-project-123
```

---

## Save Project ID

```
PROJECT_ID=$(gcloud config get-value project)
```

Now

```
echo $PROJECT_ID
```

Output

```
dev-project-123
```

Why?

Automation.

Instead of writing

```
--project=my-project
```

every time,

write

```
--project=$PROJECT_ID
```

---

## View Current Configuration

```
gcloud config list
```

Shows

```
Project

Account

Region

Zone
```

---

## Switch Project

```
gcloud config set project PROJECT_ID
```

Example

```
gcloud config set project my-demo-project
```

---

# Custom IAM Role using YAML

Create file

```
iam-role.yaml
```

Example

```yaml
title: "VM Creator"

description: "Create Compute Engine VM"

stage: "GA"

includedPermissions:

- compute.instances.create
- compute.instances.list
- compute.disks.create
```

---

## Meaning of Each Field

### title

Display name.

```
VM Creator
```

---

### description

Purpose of the role.

```
Allows VM Creation
```

---

### stage

Possible values

```
ALPHA

BETA

GA

DISABLED
```

GA means

Production Ready.

---

### includedPermissions

Actual permissions.

Example

```
compute.instances.create
```

Break it

```
compute

↓

instances

↓

create
```

Meaning

Create VM.

---

# Important Compute Permissions

### Create VM

```
compute.instances.create
```

---

### View VM

```
compute.instances.list
```

---

### Get VM Details

```
compute.instances.get
```

---

### Start VM

```
compute.instances.start
```

---

### Stop VM

```
compute.instances.stop
```

---

### Create Disk

```
compute.disks.create
```

---

### View Network

```
compute.networks.get
```

---

### View Regions

```
compute.regions.list
```

---

### View Zones

```
compute.zones.list
```

---

### Use Subnetwork

```
compute.subnetworks.use
```

Needed during VM creation.

---

### External IP

```
compute.subnetworks.useExternalIp
```

Allows assigning Public IP.

---

# Create Role using YAML

```
gcloud iam roles create vmcreator \
    --project=$PROJECT_ID \
    --file=iam-role.yaml
```

---

# Describe Role

```
gcloud iam roles describe vmcreator \
    --project=$PROJECT_ID
```

Displays

```
Role Name

Permissions

Stage

etag
```

---

# Create Role without YAML

```
gcloud iam roles create vmcreator \
  --project=$PROJECT_ID \
  --permissions=compute.instances.create,compute.instances.list \
  --title="VM Creator" \
  --description="VM Role" \
  --stage=GA
```

---

# Update Custom Role

Add permission

```
gcloud iam roles update vmcreator \
    --project=$PROJECT_ID \
    --add-permissions=compute.networks.get
```

Remove permission

```
gcloud iam roles update vmcreator \
    --project=$PROJECT_ID \
    --remove-permissions=compute.instances.create
```

---

# IAM Policy

An IAM Policy decides

```
WHO

↓

gets

↓

WHICH ROLE

↓

on WHICH RESOURCE
```

Policy consists of

```
Bindings
```

---

# What is Role Binding?

Binding means

```
Member

↓

Role

↓

Resource
```

Example

```
Role

Storage Admin

↓

Members

adarsha@gmail.com

support@gmail.com

dev@gmail.com
```

One Role can have multiple Members.

---

# Structure of IAM Policy

```
Policy

↓

Bindings

↓

Role

↓

Members
```

Example

```
roles/storage.admin

↓

user:adarsha@gmail.com

↓

user:support@gmail.com
```

---

# View IAM Policy

```
gcloud projects get-iam-policy $PROJECT_ID
```

JSON

```
gcloud projects get-iam-policy $PROJECT_ID --format=json
```

YAML

```
gcloud projects get-iam-policy $PROJECT_ID --format=yaml
```

---

# Grant IAM Role

Example

```
Support Engineer
```

needs Storage Admin.

```
gcloud projects add-iam-policy-binding $PROJECT_ID \
--member="user:support@gmail.com" \
--role="roles/storage.admin"
```

Now

Support can

✔ Create Bucket

✔ Delete Bucket

✔ Upload Objects

✔ Delete Objects

---

# Remove IAM Role

```
gcloud projects remove-iam-policy-binding $PROJECT_ID \
--member="user:support@gmail.com" \
--role="roles/storage.admin"
```

Access is revoked.

---

# Real Company Workflow

```
Developer joins company

↓

Needs VM creation

↓

Admin creates Custom Role

↓

Assign Role

↓

Developer logs in

↓

Can create VM

↓

Cannot delete Project
```

This is exactly how enterprise organizations manage secure access.

---

# Frequently Asked Interview Questions

1. What is IAM?
2. What is the Principle of Least Privilege?
3. Difference between Basic, Predefined, and Custom Roles?
4. What is an IAM Policy?
5. What is a Role Binding?
6. Difference between Permissions and Roles?
7. How do you create a Custom Role using YAML?
8. How do you assign a role to a user?
9. How do you update a Custom Role?
10. How do you view IAM Policies?
11. Why use `PROJECT_ID=$(gcloud config get-value project)` in automation?
12. Why are YAML files preferred over long CLI commands for role creation?

These notes are based on the concepts and commands from the uploaded material, organized into a structured format that's easier to study and revise. 



This is a very common **GCP DevOps hands-on lab** and is frequently asked in interviews. Let's do it step by step.

---

# Lab: Create a Service Account and Assign Storage Admin Role Using gcloud CLI

## Prerequisites

Verify you're authenticated:

```bash
gcloud auth list
```

Check the current project:

```bash
gcloud config get-value project
```

Store the project ID in a variable:

```bash
PROJECT_ID=$(gcloud config get-value project)
echo $PROJECT_ID
```

---

# Step 1: Create a Service Account

## Syntax

```bash
gcloud iam service-accounts create SERVICE_ACCOUNT_NAME \
    --display-name="DISPLAY_NAME"
```

## Example

```bash
gcloud iam service-accounts create storage-sa \
    --display-name="Storage Service Account"
```

### Explanation

* `gcloud iam service-accounts create` → Creates a new service account.
* `storage-sa` → Service account ID (must be unique within the project).
* `--display-name` → Friendly name shown in the GCP Console.

### Verify the Service Account

```bash
gcloud iam service-accounts list
```

Example output:

```text
EMAIL                                                   DISPLAY NAME
storage-sa@my-project.iam.gserviceaccount.com           Storage Service Account
```

---

# Step 2: Create a Key for the Service Account

Applications outside GCP (Terraform, Jenkins, Ansible, CI/CD pipelines) authenticate using a service account key.

## Syntax

```bash
gcloud iam service-accounts keys create KEY_FILE \
    --iam-account=SERVICE_ACCOUNT_EMAIL
```

## Example

```bash
gcloud iam service-accounts keys create storage-sa-key.json \
    --iam-account=storage-sa@$PROJECT_ID.iam.gserviceaccount.com
```

### Explanation

* `keys create` → Generates a new private key.
* `storage-sa-key.json` → JSON key file saved locally.
* `--iam-account` → Specifies which service account receives the key.

### Verify

```bash
ls
```

You should see:

```text
storage-sa-key.json
```

> **Important:** This JSON key contains credentials. Never commit it to GitHub or share it publicly.

---

# Step 3: Assign the Storage Admin Role

Grant the service account the predefined **Storage Admin** role.

## Syntax

```bash
gcloud projects add-iam-policy-binding PROJECT_ID \
    --member="serviceAccount:SERVICE_ACCOUNT_EMAIL" \
    --role="roles/storage.admin"
```

## Example

```bash
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:storage-sa@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/storage.admin"
```

### Explanation

* `add-iam-policy-binding` → Adds a new IAM binding to the project.
* `serviceAccount:` → Specifies the member type.
* `roles/storage.admin` → Grants full Cloud Storage administration permissions.

---

# Step 4: Verify the Role Assignment

List the IAM policy:

```bash
gcloud projects get-iam-policy $PROJECT_ID
```

Or filter only the service account:

```bash
gcloud projects get-iam-policy $PROJECT_ID \
    --flatten="bindings[].members" \
    --filter="bindings.members:storage-sa@$PROJECT_ID.iam.gserviceaccount.com"
```

Example output:

```text
ROLE
roles/storage.admin
```

---

# Step 5: Verify the Service Account Key

List all keys:

```bash
gcloud iam service-accounts keys list \
    --iam-account=storage-sa@$PROJECT_ID.iam.gserviceaccount.com
```

---

# Architecture

```text
                  GCP Project
                       │
        ┌──────────────┴──────────────┐
        │                             │
 Service Account                 IAM Policy
 storage-sa                          │
        │                            │
        │                     roles/storage.admin
        │                            │
        └──────────────┬─────────────┘
                       │
              Can manage Cloud Storage
              ✔ Create buckets
              ✔ Upload objects
              ✔ Delete objects
              ✔ Manage bucket settings
```

---

# Complete Lab Commands

```bash
# Get current project
PROJECT_ID=$(gcloud config get-value project)

# Create Service Account
gcloud iam service-accounts create storage-sa \
    --display-name="Storage Service Account"

# Create Service Account Key
gcloud iam service-accounts keys create storage-sa-key.json \
    --iam-account=storage-sa@$PROJECT_ID.iam.gserviceaccount.com

# Assign Storage Admin Role
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member="serviceAccount:storage-sa@$PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/storage.admin"

# Verify Service Account
gcloud iam service-accounts list

# Verify IAM Role
gcloud projects get-iam-policy $PROJECT_ID

# Verify Keys
gcloud iam service-accounts keys list \
    --iam-account=storage-sa@$PROJECT_ID.iam.gserviceaccount.com
```

## Interview Questions

**1. What is a Service Account?**
A Service Account is a special Google-managed identity used by applications, VMs, and automation tools (such as Terraform, Jenkins, or CI/CD pipelines) to securely authenticate and access GCP resources.

**2. Why do we create a Service Account key?**
A JSON key allows applications running outside GCP to authenticate as the service account. It should be protected carefully because anyone with the key can act as that service account.

**3. What does `roles/storage.admin` provide?**
It grants full administrative access to Cloud Storage resources, including creating and deleting buckets, managing objects, and configuring bucket settings.

**4. How is a Service Account different from a User?**

| User                             | Service Account                                |
| -------------------------------- | ---------------------------------------------- |
| Represents a human               | Represents an application or workload          |
| Authenticates with passwords/MFA | Authenticates with keys or attached identities |
| Used for interactive login       | Used for automation and services               |

====================================================================================================================================
# GCP VPC Deep Dive Notes (Interview + Real Time)

---

# 1. IAM Before Creating Infrastructure

Whenever you create a new GCP Project, the **first thing** is usually IAM.

IAM decides:

* Who can access the project
* What permissions they have
* Which resources they can manage

Example:

```bash
mkdir 2007
cd 2007
```

Backup the IAM policy

```bash
gcloud projects get-iam-policy PROJECT_ID --format=json > 2007.json
```

Example

```bash
gcloud projects get-iam-policy boutique-np-prod --format=json > iam-backup.json
```

This exports the entire IAM policy into a JSON file.

---

### Modify IAM

Open the file

```bash
vim iam-backup.json
```

or

```bash
nano iam-backup.json
```

Suppose you want to add

```
support@gmail.com
```

inside a role.

Example

```json
{
  "role": "roles/viewer",
  "members": [
    "user:admin@gmail.com",
    "user:support@gmail.com"
  ]
}
```

Now update IAM

```bash
gcloud projects set-iam-policy PROJECT_ID iam-backup.json
```

Verify

```bash
gcloud projects get-iam-policy PROJECT_ID
```

---

## Important IAM Terms

| Term      | Meaning                      |
| --------- | ---------------------------- |
| Principal | User, Service Account, Group |
| Member    | Same as Principal            |
| Identity  | User identity                |
| Role      | Collection of permissions    |
| Policy    | Complete IAM configuration   |

Project → IAM → Members (Principals)

```
Project
      │
      ├── User
      ├── Group
      ├── Service Account
      └── Domain
```

---

# What is a VPC?

VPC stands for

**Virtual Private Cloud**

Think of it as your own private network inside Google Cloud.

Without a network,

* VM cannot communicate
* Database cannot communicate
* Applications cannot communicate

Everything inside GCP runs inside a VPC.

---

Imagine your office.

```
Office Building
      │
      ├── Floor 1
      ├── Floor 2
      └── Floor 3
```

Similarly,

```
Google Cloud
       │
       └── VPC
              │
              ├── VM
              ├── Database
              ├── Load Balancer
              ├── GKE
              └── Storage
```

Everything lives inside the VPC.

---

# Does GCP Create a Default VPC?

Yes.

Whenever a project is created,

Google automatically creates one VPC called

```
default
```

This VPC contains

* firewall rules
* subnets
* routes

It is mainly useful for

* learning
* testing

**Not recommended for Production.**

---

# VPC is NOT a Virtual Machine

One correction.

You wrote

```
VM -> Virtual Private Cloud
```

This is incorrect.

Correct

```
VM = Virtual Machine

VPC = Virtual Private Cloud
```

---

# Default VPC Limits

You wrote

```
Google supports only 5 VPC
```

This is incorrect.

Actually,

Each project has quotas.

Normally,

* many VPCs can be created (subject to quotas)
* default quota is much higher than 5 and can be increased.

---

# Why Do We Need VPC?

Without VPC

```
VM1

VM2

Database

Application
```

None of them know how to communicate.

VPC provides

* IP Addressing
* Routing
* Firewall
* DNS
* Internal communication

---

Diagram

```
                Google Cloud

        +---------------------------+

             Virtual Private Cloud

        +---------------------------+

          │          │          │

        VM1        VM2       Database

          │          │          │

             Internal Network
```

---

# Public vs Private Application

Usually,

```
Internet
      │
      │
Load Balancer
      │
      ▼
Web Server
      │
      ▼
Application Server
      │
      ▼
Database
```

Only

```
Load Balancer
```

is public.

Everything else remains private.

---

# Firewall

Firewall controls

Who can communicate.

Example

Allow

```
Port 22
```

Only from

```
Your Office IP
```

Allow

```
Port 80
```

From Internet

Block

Everything else

---

Diagram

```
Internet

     │

Firewall

 ├── Allow 80
 ├── Allow 443
 ├── Deny Others

     │

Web Server
```

---

# Hybrid Connectivity

Suppose company already has

```
On-premises Datacenter
```

and wants to connect to GCP.

Diagram

```
Company DC

     │

Dedicated Connection

     │

Google Cloud

     │

VPC
```

Possible methods

* Cloud VPN
* Cloud Interconnect

---

# Subnets

Inside one VPC,

we divide the network into multiple subnets.

Example

```
VPC

│

├── App Subnet

├── Web Subnet

└── DB Subnet
```

Each subnet

* belongs to one region
* has its own CIDR range

---

Example

Project

```
boutique-np-prod
```

```
VPC

│

├── Web Subnet
│      us-central1
│      10.1.0.0/24

├── App Subnet
│      us-central1
│      10.1.1.0/24

└── DB Subnet
       us-central1
       10.1.2.0/24
```

---

# CIDR

CIDR

Classless Inter Domain Routing

Example

```
10.1.0.0/16
```

Meaning

```
Network

10.1.0.0

Subnet Mask

255.255.0.0
```

Total addresses

```
65536
```

---

Example

```
10.1.1.0/24
```

Subnet mask

```
255.255.255.0
```

Usable

```
254 IPs
```

---

# RFC1918 Private IP Ranges

Very important interview question.

Private IPs

```
10.0.0.0/8

172.16.0.0/12

192.168.0.0/16
```

These cannot be accessed directly from the Internet.

---

# About Classes

Your notes mention:

```
Class A /10
Class B /12
Class C /192
```

This is **not correct**.

The old classful ranges are:

| Class | Range                       | Default Mask |
| ----- | --------------------------- | ------------ |
| A     | 1.0.0.0 – 126.255.255.255   | /8           |
| B     | 128.0.0.0 – 191.255.255.255 | /16          |
| C     | 192.0.0.0 – 223.255.255.255 | /24          |

Modern networking uses **CIDR**, not classes, so focus on CIDR for GCP.

---

# Who Decides CIDR?

Usually

Not DevOps.

Network Team

or

Cloud Architect

will decide.

Reason

To avoid IP overlap.

---

# Region vs VPC

One important concept.

VPC

is

**Global**

Subnets

are

**Regional**

Diagram

```
Global VPC

      │

 ├──────────────┐

 │              │

US Central    Asia South

Subnet        Subnet

10.1.0.0      10.2.0.0
```

---

# Can Two VMs in Different Regions Communicate?

Yes.

Your note:

> I can communicate between the DB or application even though my subnets are in different regions.

This is **correct**, with an important clarification.

If the VMs are in **subnets that belong to the same VPC**, they can communicate using **private IP addresses**, even if the subnets are in different regions, because a GCP VPC is global.

Example:

```
Global VPC
│
├── us-central1
│     App VM (10.1.0.5)
│
└── asia-south1
      DB VM (10.2.0.10)
```

The App VM can connect directly to the DB VM over Google's private network (assuming firewall rules allow it).

---

# VPC Peering

Suppose

```
VPC A

10.1.0.0/16
```

and

```
VPC B

10.2.0.0/16
```

Normally

they cannot communicate.

```
VPC A      X      VPC B
```

After VPC Peering

```
VPC A  <-------> VPC B
```

Now

VMs can communicate using private IPs.

Requirements:

* Non-overlapping CIDR ranges
* Peering configured on both VPCs

---

# Shared VPC

Used by large organizations.

Instead of each project creating its own network,

one **Host Project** owns the VPC, and multiple **Service Projects** use it.

Diagram:

```
                  Organization
                       │
                Host Project
                (Shared VPC)
                       │
        ┌──────────────┼──────────────┐
        │              │              │
 Service Project A  Service Project B  Service Project C
     App VM            Web VM            DB VM
```

Benefits:

* Centralized network management
* Better security
* Easier firewall control
* Common networking across projects

---

# Auto Mode VPC

Google automatically creates

one subnet

for every GCP region.

Example

```
Region1

Subnet

10.128.x.x

Region2

Subnet

10.132.x.x

Region3

Subnet

10.136.x.x
```

Today, as Google adds more regions, Auto Mode continues to create subnets for those new regions as well.

**Not recommended for Production**, because you have little control over IP planning.

---

# Custom Mode VPC

You create

everything yourself.

Example

```
VPC

│

├── us-central1

│     10.1.0.0/24

├── asia-south1

│     10.2.0.0/24

└── europe-west1

      10.3.0.0/24
```

Advantages:

* Better IP planning
* Better security
* Preferred for production environments

---

# Interview Summary

* IAM is typically configured before creating infrastructure.
* A VPC is a **global** private network in GCP.
* Subnets are **regional** resources.
* VMs in different regions can communicate over private IPs if they are in the same VPC and firewall rules permit.
* Firewalls control inbound and outbound traffic.
* Use **Custom Mode VPC** for production.
* **Auto Mode VPC** is mainly for learning or simple environments.
* **VPC Peering** connects two separate VPCs with non-overlapping CIDR ranges.
* **Shared VPC** allows multiple projects to use a centrally managed VPC.
* Use RFC1918 private address ranges (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16) for internal networking.
* Focus on **CIDR notation** rather than legacy Class A/B/C networking, as CIDR is the modern standard used in GCP.

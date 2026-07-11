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

















console.cloud.google.com    ====> GCP 
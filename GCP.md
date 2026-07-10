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

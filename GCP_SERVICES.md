# GCP Services for DevOps Engineers

---

## 1. Compute Services

- **Google Compute Engine (GCE)**: Virtual machines for scalable compute workloads.
- **Google Kubernetes Engine (GKE)**: Managed Kubernetes service for container orchestration and deployment.
- **App Engine**: Fully managed platform for building and deploying applications without managing infrastructure.
- **Cloud Functions**: Serverless compute for executing small pieces of code in response to events.
- **Cloud Run**: Managed platform to run containers without managing servers.
- **Google Cloud Batch**: Managed batch computing service for running large-scale parallel and high-performance computing workloads.

## 2. Networking Services

- **VPC (Virtual Private Cloud)**: For managing networking and connectivity between services.
- **Cloud Load Balancing**: Scalable load balancing services to distribute traffic across instances and services.
- **Cloud CDN**: Content Delivery Network service to serve content faster across global regions.
- **Cloud Interconnect**: For private connectivity to on-premise infrastructure or other cloud providers.
- **Cloud NAT (Network Address Translation)**: Provides internet access to your resources without using external IP addresses.
- **Cloud VPN**: Secure connections between your on-premises infrastructure and Google Cloud.
- **Traffic Director**: Fully managed traffic management system for microservices in GKE.

## 3. Storage Services

- **Google Cloud Storage (GCS)**: Object storage for storing and managing large amounts of unstructured data.
- **Persistent Disks**: Block storage for attaching to virtual machines.
- **Filestore**: Managed file storage for applications needing shared file systems.
- **Cloud Storage Transfer Service**: Transfer data into and out of Google Cloud Storage.
- **Cloud Storage Nearline/Coldline**: Low-cost, durable storage for infrequently accessed data.
- **Cloud Bigtable**: NoSQL database for large-scale, low-latency applications.
- **Cloud Spanner**: Globally distributed relational database with strong consistency and high scalability.

## 4. CI/CD & Automation

- **Cloud Build**: Continuous integration and continuous delivery service for building and deploying applications on GCP.
- **Cloud Deployment Manager**: Infrastructure-as-Code (IaC) service for managing resources using templates.
- **Cloud Source Repositories**: Git repositories for source control, integrated with Cloud Build for CI/CD workflows.
- **Cloud Scheduler**: For automating cron jobs and scheduled tasks.
- **Google Cloud Pub/Sub**: Messaging service to decouple systems and support event-driven architecture.
- **Cloud Functions**: Event-driven functions for handling lightweight, asynchronous workloads.
- **Cloud Run for Anthos**: Run containers on Kubernetes clusters in your own data center.
- **Cloud Composer**: Managed workflow orchestration service built on Apache Airflow.
- **Cloud Tasks**: Fully managed task queues for distributing workloads to backend services.

## 5. Monitoring & Logging

- **Google Cloud Monitoring (formerly Stackdriver)**: For monitoring system metrics and creating dashboards to track the health and performance of GCP resources.
- **Google Cloud Logging (formerly Stackdriver Logging)**: Centralized logging service for GCP resources and applications.
- **Google Cloud Trace**: Distributed tracing service for monitoring latency and performance issues in applications.
- **Google Cloud Error Reporting**: Automatically tracks and reports errors from cloud-based applications.
- **Google Cloud Profiler**: Continuous profiling of applications to help optimize performance.
- **Google Cloud Debugger**: Provides real-time debugging of production applications without impacting performance.

## 6. Security Services

- **Identity and Access Management (IAM)**: Manage permissions and roles for users, services, and resources.
- **Cloud Security Command Center**: A security dashboard to detect vulnerabilities and ensure compliance.
- **Cloud KMS (Key Management Service)**: For managing and storing cryptographic keys securely.
- **Cloud Armor**: Protection against DDoS attacks and other web vulnerabilities.
- **Secret Manager**: For storing sensitive data such as API keys, passwords, etc.
- **Cloud Identity**: Manage users, groups, and devices across GCP.
- **Cloud Identity-Aware Proxy (IAP)**: Securely manage access to web applications and VMs.
- **VPC Service Controls**: Mitigate data exfiltration risks by defining a security perimeter around Google Cloud resources.

## 7. Database Services

- **Cloud SQL**: Managed relational databases (supports MySQL, PostgreSQL, SQL Server).
- **Cloud Firestore**: NoSQL document database for building scalable web, mobile, and server applications.
- **Cloud Datastore**: Scalable NoSQL database service for structured data storage.
- **BigQuery**: Serverless, highly scalable data warehouse for running analytics on large datasets.
- **Cloud Spanner**: Globally distributed relational database with strong consistency.
- **Cloud Memorystore**: Fully managed in-memory data store for Redis and Memcached.
- **Cloud Bigtable**: NoSQL database for large-scale, low-latency workloads.
- **Cloud Pub/Sub**: Used to decouple services and integrate event-driven architectures.

## 8. Backup and Disaster Recovery

- **Google Cloud Backup and DR**: Comprehensive backup and disaster recovery solutions for Google Cloud resources.
- **Persistent Disk Snapshots**: For creating backups of persistent disk data in Google Cloud.
- **Cloud Storage**: Use for backup storage of both structured and unstructured data.
- **Filestore Snapshots**: Create and restore snapshots for shared file storage.

## 9. Infrastructure as Code (IaC)

- **Terraform (with GCP provider)**: Open-source IaC tool for provisioning and managing GCP infrastructure.
- **Google Cloud Deployment Manager**: GCP-native IaC tool for defining resources in YAML/JSON.
- **Ansible**: Automation tool for configuration management, application deployment, and task automation on GCP.
- **Puppet**: Configuration management tool for automating provisioning, configuration, and management of GCP resources.

## 10. Serverless and Event-Driven Architecture

- **Cloud Functions**: Event-driven, serverless computing for lightweight tasks.
- **Cloud Pub/Sub**: Messaging and event streaming service to connect systems and services asynchronously.
- **Cloud Run**: Containerized applications running in a fully managed environment.
- **Cloud Tasks**: Fully managed task queue for asynchronous workloads.

## 11. Cost Management & Optimization

- **Google Cloud Billing**: Billing and cost management tools for tracking and controlling your GCP spending.
- **Cloud Billing Reports**: Reports for monitoring and analyzing billing data.
- **Cloud Cost Management**: Tools for optimizing cloud spending and setting budgets and alerts.
- **Recommendations**: Cloud services recommendations for cost optimization and right-sizing.

## 12. Other Key Services

- **Cloud IoT Core**: Managed service for securely connecting IoT devices to Google Cloud.
- **Cloud AI and Machine Learning**: Google AI services like AutoML, TensorFlow, and Vertex AI.
- **Cloud Data Loss Prevention (DLP)**: Detect, classify, and protect sensitive data in your cloud environment.

---

## Additional Skills

- **Networking knowledge**: Understanding of VPC design, firewalls, DNS, NAT, and VPNs.
- **Automation & Scripting**: Knowledge of automation tools like Ansible, Python, and Bash.
- **Containerization**: Experience with Docker and Kubernetes, especially in GKE.
- **Container Registry**: Knowledge of container storage solutions, e.g., Google Container Registry (GCR).

---

## In Summary

As a DevOps engineer  you should have hands-on experience with at least the following:

- **Core compute and container services** like Compute Engine, GKE, and Cloud Run.
- **CI/CD pipelines** (e.g., Cloud Build) and IaC tools (e.g., Terraform, Deployment Manager).
- **Monitoring, logging, and security** to ensure system observability and compliance.
- **Networking and storage** for understanding how services interact within

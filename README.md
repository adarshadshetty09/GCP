### hostname -i

```
adarshadshetty09@test-vm-linux:~$ hostname -i 
10.128.0.3    # this is the internal ip 
adarshadshetty09@test-vm-linux:~$ 
```

### gcloud command line

```
adarshadshetty09@cloudshell:~ (fleet-bongo-453603-d1)

$ gcloud compute ssh --zone "us-central1-a" "test-vm-linux" --project "fleet-bongo-453603-d1"



WARNING: The private SSH key file for gcloud does not exist.
WARNING: The public SSH key file for gcloud does not exist.
WARNING: You do not have an SSH key for gcloud.
WARNING: SSH keygen will be executed to generate a key.
This tool needs to create the directory [/home/adarshadshetty09/.ssh] before being able to 
generate SSH keys.

Do you want to continue (Y/n)?  Y

Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/adarshadshetty09/.ssh/google_compute_engine
Your public key has been saved in /home/adarshadshetty09/.ssh/google_compute_engine.pub
The key fingerprint is:
SHA256:7MadK+3tpKVZn8buUmsOzvbSftvDrtyXR2Vt5Yz55c0 adarshadshetty09@cs-853959054969-default
The key's randomart image is:
+---[RSA 3072]----+
|                 |
|                .|
|               =o|
|       .      o O|
|        S      *+|
|       o . .  . E|
|        +.o =+.o.|
|       .. .%=oB==|
|         o*o=&@=*|
+----[SHA256]-----+
Updating project ssh metadata...working.Updated [https://www.googleapis.com/compute/v1/projects/fleet-bongo-453603-d1].
Updating project ssh metadata...done.  
Waiting for SSH key to propagate.
Warning: Permanently added 'compute.3149403417080716295' (ED25519) to the list of known hosts.
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-1075-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Thu Mar 13 14:19:30 UTC 2025

  System load:  0.0               Processes:             108
  Usage of /:   28.5% of 9.51GB   Users logged in:       0
  Memory usage: 32%               IPv4 address for ens4: 10.128.0.3
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

36 updates can be applied immediately.
31 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

New release '22.04.5 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Thu Mar 13 14:03:08 2025 from 35.235.244.33
adarshadshetty09@test-vm-linux:~$ 
adarshadshetty09@test-vm-linux:~$ 
adarshadshetty09@test-vm-linux:~$ 
adarshadshetty09@test-vm-linux:~$ hostname -i
10.128.0.3   # intenal IP Address
adarshadshetty09@test-vm-linux:~$ 
adarshadshetty09@test-vm-linux:~$ 
adarshadshetty09@test-vm-linux:~$ 
```

### Through the gcloud linux command

```
gcloud compute instances create test-vm1-linux --project=fleet-bongo-453603-d1 --zone=us-central1-a --machine-type=e2-micro --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --metadata=enable-osconfig=TRUE --no-restart-on-failure --maintenance-policy=MIGRATE --provisioning-model=STANDARD --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=test-vm1-linux,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20250213,mode=rw,size=10,type=pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ops-agent-policy=v2-x86-template-1-4-0,goog-ec-src=vm_add-gcloud --reservation-affinity=any && printf 'agentsRule:\n  packageState: installed\n  version: latest\ninstanceFilter:\n  inclusionLabels:\n  - labels:\n      goog-ops-agent-policy: v2-x86-template-1-4-0\n' > config.yaml && gcloud compute instances ops-agents policies create goog-ops-agent-v2-x86-template-1-4-0-us-central1-a --project=fleet-bongo-453603-d1 --zone=us-central1-a --file=config.yaml
```

## OR

```
gcloud compute instances create test-vm3-linux \
  --project=fleet-bongo-453603-d1 \
  --zone=us-central1-a \
  --machine-type=e2-small \
  --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
  --metadata=enable-osconfig=TRUE,custom-key=value \
  --no-restart-on-failure \
  --maintenance-policy=MIGRATE \
  --provisioning-model=STANDARD \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
  --tags=http-server,https-server,custom-tag \
  --create-disk=auto-delete=yes,boot=yes,device-name=test-vm3-linux,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20250213,mode=rw,size=20,type=pd-balanced \
  --no-shielded-secure-boot \
  --shielded-vtpm \
  --shielded-integrity-monitoring \
  --labels=goog-ops-agent-policy=v2-x86-template-1-4-0,goog-ec-src=vm_add-gcloud \
  --reservation-affinity=any && \
printf 'agentsRule:\n  packageState: installed\n  version: latest\ninstanceFilter:\n  inclusionLabels:\n  - labels:\n      goog-ops-agent-policy: v2-x86-template-1-4-0\n' > config.yaml && \
gcloud compute instances ops-agents policies create goog-ops-agent-v2-x86-template-1-4-0-us-central1-a \
  --project=fleet-bongo-453603-d1 \
  --zone=us-central1-a \
  --file=config.yaml

```

##### You can also enable deletion protection on VM

### Provisioning Windows based VM and RDP into it.

#### In Service-Account You can create a Key.

### Pre-Requisites

```
PS C:\Users\User\Downloads> terraform -v
Terraform v1.10.5
on windows_amd64

Your version of Terraform is out of date! The latest version
is 1.11.2. You can update by downloading from https://www.terraform.io/downloads.html
PS C:\Users\User\Downloads>
PS C:\Users\User\Downloads>
PS C:\Users\User\Downloads> gcloud -v
Google Cloud SDK 514.0.0
bq 2.1.14
core 2025.03.07
gcloud-crc32c 1.0.0
gsutil 5.33
PS C:\Users\User\Downloads>
```

```
gcloud auth login
```

```
PS C:\Users\User\Downloads> gcloud auth login
Your browser has been opened to visit:

    https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=32555940559.apps.googleusercontent.com&redirect_uri=http%3A%2F%2Flocalhost%3A8085%2F&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fsqlservice.login+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&state=2i1n7UdH3q5EdZrCM6v1OiSfMEhMTU&access_type=offline&code_challenge=8UdLyou3w9VAvrV2H0ZxAVKujCMqvhVMImfTNUlwuZY&code_challenge_method=S256


You are now logged in as [adarshadshetty09@gmail.com].
Your current project is [None].  You can change this setting by running:
  $ gcloud config set project PROJECT_ID
PS C:\Users\User\Downloads>
```

#### Enable API for compute Engine and Cloud Engine API

```
gcloud services enable compute.googleapis.com storage.googleapis.com

```

```
PS C:\Users\User\Downloads> gcloud config set project fleet-bongo-453603-d1
Updated property [core/project].
PS C:\Users\User\Downloads> gcloud services enable compute.googleapis.com storage.googleapis.com
Operation "operations/acat.p2-772540397444-37ffa9b6-ec7f-4af6-a96c-5769dc16a0ac" finished successfully.
PS C:\Users\User\Downloads>
```

```
 $ gcloud config set project VALUE
```

### $ gcloud config configurations list

```
PS C:\Users\User\Downloads> gcloud config configurations list
NAME: default
IS_ACTIVE: True
ACCOUNT: adarshadshetty09@gmail.com
PROJECT: fleet-bongo-453603-d1
COMPUTE_DEFAULT_ZONE:
COMPUTE_DEFAULT_REGION:
PS C:\Users\User\Downloads>
```

### $ gcloud init  [To initialize the gcloud configuaration ]

```
PS C:\Users\User\Desktop\GCP\GCP\GCP_TERRAFORM\GCP_VM> gcloud compute images list --project debian-cloud --filter="family:debian-11" --format="get(name)"
debian-11-bullseye-v20250311
PS C:\Users\User\Desktop\GCP\GCP\GCP_TERRAFORM\GCP_VM>
```

**find the exact image name**: If you want to check the exact image names available for your region, you can use the GCP Console or the `gcloud` command-line tool.

To list available images for Debian 10 or Debian 11, you can run:

```
gcloud compute images list --project debian-cloud --filter="family:debian-11" --format="get(name)"
```

#### Switch between the users

```
sudo -u adarshadshetty09 bash
```

```
sudo -u User bash
```

### ssh-keygen

```
User@DESKTOP-KM01E29 MINGW64 ~
$ ssh-keygen -t rsa -b 2048 \
> -f ~/.ssh/gcp-lesson-120 \
> -C my-username
Generating public/private rsa key pair.
Enter passphrase for "/c/Users/User/.ssh/gcp-lesson-120" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/User/.ssh/gcp-lesson-120
Your public key has been saved in /c/Users/User/.ssh/gcp-lesson-120.pub
The key fingerprint is:
SHA256:0C5WGWayKcVoPpu4g9OrxCWl4ENMGB/hVAWAE0q6nSg my-username
The key's randomart image is:
+---[RSA 2048]----+
|+*=+o=+ +        |
|X+ .o..B o       |
|++o+. + +        |
|++o.o. +         |
|E=oo +o S        |
|o = o. .         |
| = .             |
|+ +              |
|.o.o             |
+----[SHA256]-----+

User@DESKTOP-KM01E29 MINGW64 ~
$ cd .ssh/

User@DESKTOP-KM01E29 MINGW64 ~/.ssh
$ ls
config          gcp-lesson-120.pub     google_compute_engine.ppk  known_hosts
gcp-lesson-120  google_compute_engine  google_compute_engine.pub  known_hosts.old

User@DESKTOP-KM01E29 MINGW64 ~/.ssh

```

### Login throught the SSH

```
$ ssh -i ~/.ssh/gcp-lesson-120 my-username@35.184.16.91
```

#### [General-purpose machine family for Compute Engine  |  Compute Engine Documentation  |  Google Cloud](https://cloud.google.com/compute/docs/general-purpose-machines)


#### [How can you configure the boot disk for your VM instance in Compute Engine? - EITCA Academy](https://eitca.org/cloud-computing/eitc-cl-gcp-google-cloud-platform/getting-started-with-gcp/compute-engine/examination-review-compute-engine/how-can-you-configure-the-boot-disk-for-your-vm-instance-in-compute-engine/)


===============================================================================================================================
gcloud auth application-default login

```
devops:dopadm:~/.config/gcloud$ls
access_tokens.db  application_default_credentials.json  configurations  default_configs.db  legacy_credentials
active_config     config_sentinel                       credentials.db  gce                 logs
devops:dopadm:~/.config/gcloud$pwd
/home/dopadm/.config/gcloud
devops:dopadm:~/.config/gcloud$

```

https://developer.hashicorp.com/packer/integrations/hashicorp/googlecompute



## GCP Services Must Know 

## 1. Compute (Must Know) ⭐⭐⭐⭐⭐

* Compute Engine

  * VM creation
  * Custom images
  * Instance templates
  * Startup scripts
  * Managed instance groups

* Google Kubernetes Engine (GKE)

  * Cluster creation
  * Node pools
  * Autoscaling
  * Upgrades
  * Workloads

* Cloud Run

  * Container deployments
  * Revisions
  * Traffic splitting

---

## 2. Networking (Must Know) ⭐⭐⭐⭐⭐

* Virtual Private Cloud (VPC)
* Subnets
* Routes
* Firewall rules
* Private IP
* Public IP
* Shared VPC

Also learn:

* Cloud Load Balancing
* Cloud DNS
* Cloud NAT
* Cloud VPN
* Cloud Interconnect (basic understanding)

---

## 3. IAM & Security ⭐⭐⭐⭐⭐

Know these thoroughly:

* Identity and Access Management (IAM)
* Service Accounts
* Custom Roles
* IAM Policies
* Organization
* Folder
* Project hierarchy

Also:

* Secret Manager
* Cloud Key Management Service

---

## 4. Storage ⭐⭐⭐⭐⭐

* Cloud Storage

  * Buckets
  * Lifecycle policies
  * Versioning
  * Storage classes
  * Signed URLs

---

## 5. Logging & Monitoring ⭐⭐⭐⭐⭐

Very important for SRE.

Learn:

* Cloud Monitoring
* Cloud Logging
* Alerts
* Dashboards
* Metrics Explorer
* Uptime checks
* Logs Explorer
* Log-based metrics

---

## 6. Databases ⭐⭐⭐⭐☆

* Cloud SQL
* AlloyDB
* Spanner (basic understanding)

Since you already work with databases, focus on:

* Backups
* HA
* Read replicas
* Failover
* Monitoring

---

## 7. CI/CD ⭐⭐⭐⭐⭐

Know how deployments work using:

* Cloud Build
* Artifact Registry

Also learn external tools:

* Jenkins
* GitHub Actions
* Argo CD

---

## 8. Infrastructure as Code ⭐⭐⭐⭐⭐

You already know Terraform.

Practice managing:

* Compute Engine
* GKE
* VPC
* IAM
* Cloud Storage
* Cloud SQL

using Terraform.

---

## 9. Containers ⭐⭐⭐⭐⭐

* Docker
* GKE
* Cloud Run
* Artifact Registry

---

## 10. Reliability (Very Important for SRE) ⭐⭐⭐⭐⭐

Understand:

* SLI
* SLO
* SLA
* Error budgets
* Capacity planning
* Auto-healing
* Auto-scaling
* Incident response
* Disaster Recovery (DR)
* High Availability (HA)

---

## 11. Useful Services

* Cloud Scheduler
* Pub/Sub
* Cloud Functions
* Cloud Armor
* Cloud CDN

---

# Learning Priority

| Priority | Service                    | Importance |
| -------- | -------------------------- | ---------- |
| ⭐⭐⭐⭐⭐    | Linux                      | Must know  |
| ⭐⭐⭐⭐⭐    | Docker                     | Must know  |
| ⭐⭐⭐⭐⭐    | Kubernetes (GKE)           | Must know  |
| ⭐⭐⭐⭐⭐    | Terraform                  | Must know  |
| ⭐⭐⭐⭐⭐    | Compute Engine             | Must know  |
| ⭐⭐⭐⭐⭐    | VPC Networking             | Must know  |
| ⭐⭐⭐⭐⭐    | IAM                        | Must know  |
| ⭐⭐⭐⭐⭐    | Cloud Logging & Monitoring | Must know  |
| ⭐⭐⭐⭐⭐    | Cloud Build                | Must know  |
| ⭐⭐⭐⭐☆    | Cloud Storage              | High       |
| ⭐⭐⭐⭐☆    | Cloud SQL                  | High       |
| ⭐⭐⭐⭐☆    | NGINX                      | High       |
| ⭐⭐⭐⭐☆    | Jenkins/GitHub Actions     | High       |
| ⭐⭐⭐⭐☆    | Argo CD                    | High       |
| ⭐⭐⭐⭐☆    | Prometheus & Grafana       | High       |

### Based on your background

Because you already have experience with **Linux, GCP, Terraform, HA/DR, database installation, performance tuning, archive/purge, and monitoring**, you're well positioned for a DevOps or SRE transition. The biggest gaps to focus on are:

* Docker
* Kubernetes (GKE)
* NGINX
* CI/CD (Cloud Build, Jenkins, or GitHub Actions)
* GitOps with Argo CD
* Prometheus & Grafana
* Advanced GCP networking and IAM

Mastering these areas will prepare you for many **mid-level DevOps and SRE roles** on GCP.

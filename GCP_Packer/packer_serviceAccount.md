#### Running on Google Cloud

If you run the `googlecompute` Packer builder on GCE or GKE, you can configure that instance or cluster to use a [Google Service Account](https://cloud.google.com/compute/docs/authentication). This will allow Packer to authenticate to Google Cloud without having to bake in a separate credential/authentication file.

It is recommended that you create a custom service account for Packer and assign it `Compute Instance Admin (v1)` & `Service Account User` roles.

For `gcloud`, you can run the following commands:

```
gcloud iam service-accounts create packer \
  --project YOUR_GCP_PROJECT \
  --description="Packer Service Account" \
  --display-name="Packer Service Account"

$ gcloud projects add-iam-policy-binding YOUR_GCP_PROJECT \
    --member=serviceAccount:packer@YOUR_GCP_PROJECT.iam.gserviceaccount.com \
    --role=roles/compute.instanceAdmin.v1

$ gcloud projects add-iam-policy-binding YOUR_GCP_PROJECT \
    --member=serviceAccount:packer@YOUR_GCP_PROJECT.iam.gserviceaccount.com \
    --role=roles/iam.serviceAccountUser

$ gcloud projects add-iam-policy-binding YOUR_GCP_PROJECT \
    --member=serviceAccount:packer@YOUR_GCP_PROJECT.iam.gserviceaccount.com \
    --role=roles/iap.tunnelResourceAccessor

$ gcloud compute instances create INSTANCE-NAME \
  --project YOUR_GCP_PROJECT \
  --image-family ubuntu-2004-lts \
  --image-project ubuntu-os-cloud \
  --network YOUR_GCP_NETWORK \
  --zone YOUR_GCP_ZONE \
  --service-account=packer@YOUR_GCP_PROJECT.iam.gserviceaccount.com \
  --scopes="https://www.googleapis.com/auth/cloud-platform"

```

## List all the ServiceAccount Present in GCP

````
$ gcloud iam service-accounts list
DISPLAY NAME: Packer Service Account
EMAIL: packer@fleet-bongo-453603-d1.iam.gserviceaccount.com
DISABLED: False

DISPLAY NAME: Compute Engine default service account
EMAIL: 772540397444-compute@developer.gserviceaccount.com
DISABLED: False
```
````

### gcloud iam service-accounts list --project=<PROJECT_ID>

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP/GCP_Packer (main)
$ gcloud iam service-accounts list --project=fleet-bongo-453603-d1
DISPLAY NAME: Packer Service Account
EMAIL: packer@fleet-bongo-453603-d1.iam.gserviceaccount.com
DISABLED: False

DISPLAY NAME: Compute Engine default service account
EMAIL: 772540397444-compute@developer.gserviceaccount.com
DISABLED: False

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP/GCP_Packer (main)
$

```

## Create the VM Instance

```
gcloud compute instances create packer-ansible \
  --project fleet-bongo-453603-d1 \
  --image-family ubuntu-2004-lts \
  --image-project ubuntu-os-cloud \
  --network "projects/fleet-bongo-453603-d1/global/networks/default" \
  --zone us-central1-a \
  --service-account=packer@fleet-bongo-453603-d1.iam.gserviceaccount.com \
  --scopes="https://www.googleapis.com/auth/cloud-platform"
```

### After creation

```
$ gcloud compute instances create packer-ansible \
  --project fleet-bongo-453603-d1 \
  --image-family ubuntu-2004-lts \
  --image-project ubuntu-os-cloud \
  --network "projects/fleet-bongo-453603-d1/global/networks/default" \
  --zone us-central1-a \
  --service-account=packer@fleet-bongo-453603-d1.iam.gserviceaccount.com \
  --scopes="https://www.googleapis.com/auth/cloud-platform"
Created [https://www.googleapis.com/compute/v1/projects/fleet-bongo-453603-d1/zones/us-central1-a/instances/packer-ansible].
NAME: packer-ansible
ZONE: us-central1-a
MACHINE_TYPE: n1-standard-1
PREEMPTIBLE:
INTERNAL_IP: 10.128.15.198
EXTERNAL_IP: 35.202.182.130
STATUS: RUNNING
```

## Install Packer In this VM 35.202.182.130

```
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install packer
```

## Packer Version

```
adarshadshetty09@packer-ansible:~$ packer
Usage: packer [--version] [--help] <command> [<args>]

Available commands are:
    build           build image(s) from template
    console         creates a console for testing variable interpolation
    fix             fixes templates from old versions of packer
    fmt             Rewrites HCL2 config files to canonical format
    hcl2_upgrade    transform a JSON template into an HCL2 configuration
    init            Install missing plugins or upgrade plugins
    inspect         see components of a template
    plugins         Interact with Packer plugins and catalog
    validate        check that a template is valid
    version         Prints the Packer version

adarshadshetty09@packer-ansible:~$ packer version 
Packer v1.12.0
adarshadshetty09@packer-ansible:~$ packer --version 
Packer v1.12.0
adarshadshetty09@packer-ansible:~$ 
```

## Check Internet Speed on Ubuntu

```
sudo apt install speedtest-cli
```

## speedtest-cli

```
adarshadshetty09@packer-ansible:~$ speedtest-cli
Retrieving speedtest.net configuration...
Testing from Google Cloud (35.202.182.130)...
Retrieving speedtest.net server list...
Selecting best server based on ping...
Hosted by CenturyLink (Omaha, NE) [12.44 km]: 28.437 ms
Testing download speed................................................................................
Download: 2042.61 Mbit/s
Testing upload speed......................................................................................................
Upload: 479.90 Mbit/s
adarshadshetty09@packer-ansible:~$ 
```

## Remove The Packer Version

```
sudo apt-get remove --purge packer
```

## Packer Installation For JSON Format

```
sudo apt-get remove --purge packer
sudo apt-get install -y wget unzip
wget https://releases.hashicorp.com/packer/1.8.6/packer_1.8.6_linux_amd64.zip
unzip packer_1.8.6_linux_amd64.zip
sudo mv packer /usr/local/bin/
packer version


packer build yugabyte_db_json_ansible.json
```

## Cache the Password For GITHUB Repo git

```
git config --global credential.helper cache
```

It will cache your username and password (Token)

### Varify the URL is Reachable or Not

```
[packer@instance-yugabyte tmp]$ ls
ssh-XXXXDyFVBe                                                           systemd-private-6000b5dfa6a44755ada0867b356a307a-dbus-broker.service-mIKdVN
ssh-XXXXNyCxwN                                                           systemd-private-6000b5dfa6a44755ada0867b356a307a-kdump.service-abLigS
systemd-private-6000b5dfa6a44755ada0867b356a307a-chronyd.service-6Z9jnp  systemd-private-6000b5dfa6a44755ada0867b356a307a-systemd-logind.service-pAm5uR
[packer@instance-yugabyte tmp]$ curl -I https://software.yugabyte.com/releases/2.25.1.0/yugabyte-2.25.1.0-b381-linux-x86_64.tar.gz
HTTP/2 302 
date: Wed, 09 Apr 2025 07:14:48 GMT
location: https://downloads.yugabyte.com/releases/2.25.1.0/yugabyte-2.25.1.0-b381-linux-x86_64.tar.gz
strict-transport-security: max-age=31536000; includeSubDomains

[packer@instance-yugabyte tmp]$ curl -I https://downloads.yugabyte.com/releases/2.25.1.0/yugabyte-2.25.1.0-b381-linux-x86_64.tar.gz
HTTP/2 200 
date: Wed, 09 Apr 2025 07:15:22 GMT
content-type: application/x-tar
content-length: 441784223
cf-ray: 92d8367e0d54aca0-YYZ
cf-cache-status: MISS
accept-ranges: bytes
cache-control: max-age=14400
etag: "650bd9b0807f801408351c26439bb138-53"
last-modified: Fri, 21 Mar 2025 17:03:14 GMT
strict-transport-security: max-age=31536000; includeSubDomains
vary: Accept-Encoding
via: 1.1 04fa8a9e73b27e301fb4b6d36f313186.cloudfront.net (CloudFront)
referrer-policy: strict-origin-when-cross-origin
x-amz-cf-id: 7hYDJj35JzdeWQIJMB1TT8YuObOEh1hGn5-EPttHE1M0lMiUqjntuA==
x-amz-cf-pop: YTO50-P2
x-amz-version-id: LBFbtYDQ21YzqWA0SEqroj3kebgRS5m4
x-cache: Hit from cloudfront
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v4?s=mHO4p8%2FHYQd%2FYA%2BGJcWeftm7X3%2FdjK09YpBEMhZoJHMk%2BIzzkbJVeOop2o4ntz7Ej2Q47JqlYidHZre5FoFc8Q8FJ30HMRo2T2U5HVVdVKwHIjmOsEor0iQSloDcYi6VeCpN9gj9IZQ%3D"}],"group":"cf-nel","max_age":604800}
nel: {"success_fraction":0,"report_to":"cf-nel","max_age":604800}
server: cloudflare
server-timing: cfL4;desc="?proto=TCP&rtt=9418&min_rtt=9276&rtt_var=2699&sent=7&recv=9&lost=0&retrans=0&sent_bytes=3389&recv_bytes=875&delivery_rate=455368&cwnd=152&unsent_bytes=0&cid=06d1e097ed18f4a0&ts=99&x=0"

[packer@instance-yugabyte tmp]$ ^C
[packer@instance-yugabyte tmp]$ 
```

# Service Account Creation

```
winter-cocoa-437211-s2



gcloud iam service-accounts create packer \
  --project winter-cocoa-437211-s2 \
  --description="Packer Service Account" \
  --display-name="Packer Service Account"


gcloud projects add-iam-policy-binding winter-cocoa-437211-s2 \
    --member=serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com \
    --role=roles/compute.instanceAdmin.v1


gcloud projects add-iam-policy-binding winter-cocoa-437211-s2 \
    --member=serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com \
    --role=roles/iam.serviceAccountUser

gcloud projects add-iam-policy-binding winter-cocoa-437211-s2 \
    --member=serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com \
    --role=roles/iap.tunnelResourceAccessor


gcloud compute instances create packertest \
  --project winter-cocoa-437211-s2 \
  --image-family ubuntu-2004-lts \
  --image-project ubuntu-os-cloud \
  --network default \
  --zone us-central1-a \
  --service-account=packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com \
  --scopes="https://www.googleapis.com/auth/cloud-platform"
```

## Create instance with CutomeImage - launch instance

```
$ gcloud compute instances create nginx-test-instance \
  --zone=us-central1-a \
  --machine-type=n1-standard-1 \
  --image=nginx-image-1744262094 \
  --image-project=winter-cocoa-437211-s2 \
  --tags=nginx-server
Created [https://www.googleapis.com/compute/v1/projects/fleet-bongo-453603-d1/zones/us-central1-a/instances/nginx-test-instance].
NAME: nginx-test-instance
ZONE: us-central1-a
MACHINE_TYPE: n1-standard-1
PREEMPTIBLE:
INTERNAL_IP: 10.128.0.29
EXTERNAL_IP: 34.45.81.149
STATUS: RUNNING
```

## Enable the Required Permission for the KMS using Gcloud

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keys add-iam-policy-binding yugabytedbkeyRings \
  --location asia-south1 \
  --keyring yugabytedbKMS \
  --member "serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role roles/cloudkms.cryptoKeyEncrypterDecrypter \
  --project=winter-cocoa-437211-s2

Updated IAM policy for key [yugabytedbkeyRings].
bindings:
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/cloudkms.cryptoKeyEncrypterDecrypter
etag: BwYye51J40s=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)

```

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keys list --keyring=yugabytedbKMS --location=asia-south1 --project=winter-cocoa-437211-s2
NAME: projects/winter-cocoa-437211-s2/locations/asia-south1/keyRings/yugabytedbKMS/cryptoKeys/yugabytedbkeyRings
PURPOSE: ENCRYPT_DECRYPT
ALGORITHM: GOOGLE_SYMMETRIC_ENCRYPTION
PROTECTION_LEVEL: SOFTWARE
LABELS:
PRIMARY_ID: 1
PRIMARY_STATE: ENABLED

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
```

### Permission Needed

```
roles/compute.instanceAdmin.v1 – to create/delete VMs

roles/iam.serviceAccountUser – to allow usage of service accounts

roles/storage.objectViewer – if pulling base images from GCS
```

## Storage Permission

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud projects add-iam-policy-binding winter-cocoa-437211-s2 \
  --member="serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role="roles/compute.storageAdmin"

Updated IAM policy for project [winter-cocoa-437211-s2].
bindings:
- members:
  - serviceAccount:service-121218740928@gcp-sa-cloudkms.iam.gserviceaccount.com
  role: roles/cloudkms.serviceAgent
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/compute.instanceAdmin.v1
- members:
  - serviceAccount:service-121218740928@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/compute.storageAdmin
- members:
  - serviceAccount:121218740928-compute@developer.gserviceaccount.com
  - serviceAccount:121218740928@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/iam.serviceAccountUser
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/iap.tunnelResourceAccessor
- members:
  - user:adarshadshetty09@gmail.com
  role: roles/owner
etag: BwYye9NXvT0=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)

```

## Cryptokeyencrptordecyptor

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keys add-iam-policy-binding yugabytedbkeyRings \
  --location asia-south1 \
  --keyring yugabytedbKMS \
  --member="serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role="roles/cloudkms.cryptoKeyEncrypterDecrypter" \
  --project=winter-cocoa-437211-s2

Updated IAM policy for key [yugabytedbkeyRings].
bindings:
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/cloudkms.cryptoKeyEncrypterDecrypter
etag: BwYye9FRTe4=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)

```

## List the keys

```
$ gcloud kms keys list --keyring=yugabytedbKMS --location=asia-south1 --project=winter-cocoa-437211-s2
NAME: projects/winter-cocoa-437211-s2/locations/asia-south1/keyRings/yugabytedbKMS/cryptoKeys/yugabytedbkeyRings
PURPOSE: ENCRYPT_DECRYPT
ALGORITHM: GOOGLE_SYMMETRIC_ENCRYPTION
PROTECTION_LEVEL: SOFTWARE
LABELS:
PRIMARY_ID: 1
PRIMARY_STATE: ENABLED

```

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keys add-iam-policy-binding yugabytedbkeyRings \
  --keyring=yugabytedbKMS \
  --location=asia-south1 \
  --member="serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role="roles/cloudkms.cryptoKeyEncrypterDecrypter" \
  --project=winter-cocoa-437211-s2
Updated IAM policy for key [yugabytedbkeyRings].
bindings:
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/cloudkms.cryptoKeyEncrypterDecrypter
etag: BwYyfM1_7ss=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keys add-iam-policy-binding yugabytedbkeyRings \
  --keyring=yugabytedbKMS \
  --location=asia-south1 \
  --member="serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role="roles/cloudkms.cryptoKeyEncrypterDecrypter" \
  --project=winter-cocoa-437211-s2

Updated IAM policy for key [yugabytedbkeyRings].
bindings:
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/cloudkms.cryptoKeyEncrypterDecrypter
etag: BwYyfOxqmqw=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud kms keyrings get-iam-policy yugabytedbKMS \
  --location=asia-south1 \
  --project=winter-cocoa-437211-s2
etag: ACAB

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud projects add-iam-policy-binding winter-cocoa-437211-s2 \
  --member="serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com" \
  --role="roles/cloudkms.admin"

Updated IAM policy for project [winter-cocoa-437211-s2].
bindings:
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/cloudkms.admin
- members:
  - serviceAccount:service-121218740928@gcp-sa-cloudkms.iam.gserviceaccount.com
  role: roles/cloudkms.serviceAgent
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/compute.instanceAdmin.v1
- members:
  - serviceAccount:service-121218740928@compute-system.iam.gserviceaccount.com
  role: roles/compute.serviceAgent
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/compute.storageAdmin
- members:
  - serviceAccount:121218740928-compute@developer.gserviceaccount.com
  - serviceAccount:121218740928@cloudservices.gserviceaccount.com
  role: roles/editor
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/iam.serviceAccountUser
- members:
  - serviceAccount:packertest@winter-cocoa-437211-s2.iam.gserviceaccount.com
  role: roles/iap.tunnelResourceAccessor
- members:
  - user:adarshadshetty09@gmail.com
  role: roles/owner
etag: BwYyfO-oENY=
version: 1

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/G
```

```
User@DESKTOP-KM01E29 MINGW64 ~
$ gcloud compute instances describe yugabytedb-instance \
  --zone=asia-south1-a \
  --project=devops-456705

canIpForward: false
cpuPlatform: Intel Broadwell
creationTimestamp: '2025-04-13T20:49:05.303-07:00'
deletionProtection: false
disks:
- architecture: X86_64
  autoDelete: true
  boot: true
  deviceName: persistent-disk-0
  diskSizeGb: '30'
  guestOsFeatures:
  - type: UEFI_COMPATIBLE
  - type: VIRTIO_SCSI_MULTIQUEUE
  - type: SEV_CAPABLE
  - type: SEV_SNP_CAPABLE
  - type: SEV_LIVE_MIGRATABLE
  - type: SEV_LIVE_MIGRATABLE_V2
  - type: GVNIC
  - type: IDPF
  - type: TDX_CAPABLE
  index: 0
  interface: SCSI
  kind: compute#attachedDisk
  licenses:
  - https://www.googleapis.com/compute/v1/projects/centos-cloud/global/licenses/centos-stream-9
  mode: READ_WRITE
  source: https://www.googleapis.com/compute/v1/projects/devops-456705/zones/asia-south1-a/disks/yugabytedb-instance
  type: PERSISTENT
fingerprint: TSiS7JcSaJA=
id: '7027394062253636417'
kind: compute#instance
labelFingerprint: 42WmSpB8rSM=
lastStartTimestamp: '2025-04-13T20:50:37.820-07:00'
machineType: https://www.googleapis.com/compute/v1/projects/devops-456705/zones/asia-south1-a/machineTypes/e2-medium
metadata:
  fingerprint: qT0WRpV3IQ8=
  items:
  - key: ssh-keys
    value: |-
      adarshadshetty09:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBD/pbKoqqX5bsUMXv5tS563mJOpXujMHS8j7+RMqQsZb8oHH2GMNm5zIb6J4YlhFsUenUrL+2exSviBOh3LW/cY= google-ssh {"userName":"adarshadshetty09@gmail.com","expireOn":"2025-04-14T03:54:33+0000"}
      adarshadshetty09:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAHhScNy42vgOIK6pVMJZYSkLFRK8wo4IxYdmXnGSRt1sZyDxUwjb++IRwNPlQyxy62/nj44gfoP2fVX7PoXbyCKW9ATdiu6inBRaaLIgFrfA2dMywIj7MEywE8JZkHCea2uZotzamMO2T6rWWfABltto3GviPd1K9vTPfOTVofWqSptg8dBC1chSGMqgShl9Q2eybhwn9VVbTY6CFIH3fl/dzLLorFpLPx1N+f7y66JikbZ6ny+G2wMImXvXIhkzMSmFLInnenM2dL6swT/BGAA8peU1cpv+CIM5irdJxUWvsZBKaW1Bb0/+LLxARngATucmOKGYv1nqjLwAoIOHWqc= google-ssh {"userName":"adarshadshetty09@gmail.com","expireOn":"2025-04-14T03:54:38+0000"}
  kind: compute#metadata
name: yugabytedb-instance
networkInterfaces:
- accessConfigs:
  - kind: compute#accessConfig
    name: external-nat
    natIP: 35.244.3.163
    networkTier: PREMIUM
    type: ONE_TO_ONE_NAT
  fingerprint: UEyMqrUWVow=
  kind: compute#networkInterface
  name: nic0
  network: https://www.googleapis.com/compute/v1/projects/devops-456705/global/networks/default
  networkIP: 10.160.0.11
  stackType: IPV4_ONLY
  subnetwork: https://www.googleapis.com/compute/v1/projects/devops-456705/regions/asia-south1/subnetworks/default
satisfiesPzi: true
scheduling:
  automaticRestart: true
  onHostMaintenance: MIGRATE
  preemptible: false
  provisioningModel: STANDARD
selfLink: https://www.googleapis.com/compute/v1/projects/devops-456705/zones/asia-south1-a/instances/yugabytedb-instance
serviceAccounts:
- email: test-practice@devops-456705.iam.gserviceaccount.com
  scopes:
  - https://www.googleapis.com/auth/cloud-platform
shieldedInstanceConfig:
  enableIntegrityMonitoring: true
  enableSecureBoot: false
  enableVtpm: true
shieldedInstanceIntegrityPolicy:
  updateAutoLearnPolicy: true
startRestricted: false
status: RUNNING
tags:
  fingerprint: hRXRB72fTQw=
  items:
  - yugabytedb-image
zone: https://www.googleapis.com/compute/v1/projects/devops-456705/zones/asia-south1-a

User@DESKTOP-KM01E29 MINGW64 ~
```

```
User@DESKTOP-KM01E29 MINGW64 ~
$ gcloud compute images describe yugabytedb-image-1744565557   --project=devops-456705
architecture: X86_64
archiveSizeBytes: '2442421184'
creationTimestamp: '2025-04-13T10:37:57.827-07:00'
description: Created by Packer
diskSizeGb: '30'
enableConfidentialCompute: false
guestOsFeatures:
- type: UEFI_COMPATIBLE
- type: VIRTIO_SCSI_MULTIQUEUE
- type: SEV_CAPABLE
- type: SEV_SNP_CAPABLE
- type: SEV_LIVE_MIGRATABLE
- type: SEV_LIVE_MIGRATABLE_V2
- type: GVNIC
- type: IDPF
- type: TDX_CAPABLE
id: '694064390270765213'
imageEncryptionKey:
  kmsKeyName: projects/devops-456705/locations/us-central1/keyRings/packerdevopskeyring/cryptoKeys/packerdevopscryptokey/cryptoKeyVersions/1
kind: compute#image
labelFingerprint: 42WmSpB8rSM=
licenseCodes:
- '2587764519704208542'
licenses:
- https://www.googleapis.com/compute/v1/projects/centos-cloud/global/licenses/centos-stream-9
name: yugabytedb-image-1744565557
satisfiesPzi: true
selfLink: https://www.googleapis.com/compute/v1/projects/devops-456705/global/images/yugabytedb-image-1744565557
sourceDisk: https://www.googleapis.com/compute/v1/projects/devops-456705/zones/asia-south1-a/disks/packer-67fbf535-80e4-4626-5b1b-515875e37072
sourceDiskId: '734582295697443796'
sourceType: RAW
status: READY
storageLocations:
- us-central1

User@DESKTOP-KM01E29 MINGW64 ~


```

```
User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)
$ gcloud projects list
PROJECT_ID: devops-456705
NAME: devops
PROJECT_NUMBER: 898537920396

PROJECT_ID: fleet-bongo-453603-d1
NAME: My First Project
PROJECT_NUMBER: 772540397444

PROJECT_ID: winter-cocoa-437211-s2
NAME: My First Project
PROJECT_NUMBER: 121218740928

User@DESKTOP-KM01E29 MINGW64 ~/Desktop/GCP (main)

```

## Checking the OS Release

```
adarshadshetty09@yba-instance:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.6 LTS
Release:        20.04
Codename:       focal
adarshadshetty09@yba-instance:~$ cat /etc/os-release 
NAME="Ubuntu"
VERSION="20.04.6 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.6 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
adarshadshetty09@yba-instance:~$ hostnamectl
   Static hostname: yba-instance
         Icon name: computer-vm
           Chassis: vm
        Machine ID: 95c5cecc3dade2af3e7fbce6d332739f
           Boot ID: bc09a8203dd347b199c57cf19a99f5de
    Virtualization: kvm
  Operating System: Ubuntu 20.04.6 LTS
            Kernel: Linux 5.15.0-1078-gcp
      Architecture: x86-64
adarshadshetty09@yba-instance:~$ 
```


### Install Ansible Version

```
ansible --version
sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y



```

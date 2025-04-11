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
$
```

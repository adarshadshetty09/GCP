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

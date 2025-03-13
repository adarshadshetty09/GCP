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





VPC Firewall

Google Will by default create a default VPC. 

In custom VPC we are not able to login because firewalls blocking the ssh port number  22 is not opened.
For webserver i need to open the port 80
For https i need to open the port 443 


Request is coming inside the server is called inbound / ingress traffic 
Request is going outside the server is called outbound / egress traffic 

This is security Block/Gate  infront of VPC / Subnet.


* Allow/deny traffic to and from instance 
* manage both inbound(ingress) outbound(egress) traffic
*** Firewall are implemented at the VPC level, but can also implemented at the vm level.

|-------------------------------|
|                               |
|                               |
|         VPC                   |
|                               |
|                               |
|                               |   we  can assign a Network Tag
|-------------------------------|                               
Implement the firewall at the VPC level.  And enforce that to a server level by adding the tag.  --> Network Tag allow-ssh 


Let's create via CLI 



# Create a VPC 
gcloud compute network creat vpc-1 \ 
       --subnet-mode=custom

# Create a subnet in us-central1 in above the VPC
gcloud compute networks subnet create subnet-1 \ 
       --network=vpc-1 \ 
       --region=us-central1 \ 
       --range=10.0.0/24 



# Create a subnet in asia-southeast1 in above the VPC
gcloud compute networks subnet create subnet-1 \ 
       --network=vpc-1 \ 
       --region=us-central1 \ 
       --range=10.0.0/24 


mkdir 2107 

cd 2107 

gcloud compute network creat vpc-1 \ 
       --subnet-mode=custom


gcloud compute networks subnet create subnet-1 \ 
       --network=vpc-1 \ 
       --region=us-central1 \ 
       --range=10.0.0/24 

gcloud compute networks subnet create subnet-2 \ 
       --network=vpc-1 \ 
       --region=asia-southeast1 \ 
       --range=10.1.0/24 


# Let's create the vm in these subnet subnet1 

gcloud compute instance create central-vm-vpc1 \
      --zone us-central1-a \
      --machine-type e2-micro \
      --subnet=subnet-1 


# Let's create the vm in these subnet subnet2
gcloud compute instance create central-vm-vpc2 \
      --zone asia-southeast1-a \
      --machine-type e2-micro \
      --subnet=subnet-2



As a user you try to login 

Implement the firewall for vpc1 

Just open the tcp/22 ,source is the all 0.0.0.0/0 (Bank Network)


# Create the firewall rule to allow SSH traffic from anywhere 
gcloud compute firewall-rules create allow-ssh-vpc1 \
      --description="This will allow port 22 to login to vms in vpc1 " \
      --direction=INGRESS --priority=1000 --network=vpc-1 \
      --action=ALLOW --rule=tcp:22 \
      --source-ranges=0.0.0.0/0

from vpc-1-vm ping to vpc-2-vm 

It will not communicate , Because why to establish the communication between these to servers i need to enable the ICMP rule behind the firewall rule. 


This include in the other section in Console

gcloud compute firewall-rules create allow-icmp-vpc1 \
    --description="Allow ICMP (ping) to VMs in vpc1" \
    --direction=INGRESS \
    --priority=1000 \
    --network=vpc-1 \
    --action=ALLOW \
    --rules=icmp \
    --source-ranges=0.0.0.0/0

Now try to ping servers it will start communication. 


# Let's create the vm in these subnet subnet1 secure vm 

gcloud compute instance create secure-vm \
      --zone us-central1-a \
      --machine-type e2-micro \
      --subnet=subnet-1

Create network and update network tag allow ssh and add them in the servers for vm1 and vm2 


# Create the firewall rule to allow SSH for few servers traffic from anywhere 
gcloud compute firewall-rules create allow-ssh-vpc1 \
    --description="This will allow port 22 to login to VMs in vpc1" \
    --direction=INGRESS \
    --priority=1000 \
    --network=vpc-1 \
    --action=ALLOW \
    --rules=tcp:22 \
    --source-ranges=0.0.0.0/0 \
    --target-tags=allow-ssh

# Task

```text
1) Create a VPC called vpc-1

2) Create 2 subnets in vpc-1
   - subnet-a
     * Region: us-central1
     * CIDR Range: 10.2.1.0/24

   - subnet-b
     * Region: asia-southeast1
     * CIDR Range: 10.2.2.0/24

3) Create 3 VMs in subnet-a
   - instance-1a
   - instance-1b
   - instance-1c

4) Create 2 VMs in subnet-b
   - instance-2
   - instance-3

5) Create a firewall rule to allow SSH (Port 22) to the VMs.

6) Network Requirement:
   - instance-1a and instance-1b should be able to ping instance-2.

7) Network Restriction:
   - instance-1c should NOT be able to ping instance-2.

8) Network Restriction:
   - instance-1a, instance-1b, and instance-1c should NOT be able to ping instance-3.
```

This is a good hands-on lab to practice:

* VPC creation
* Subnet creation
* VM creation
* Network tags
* Firewall rules (INGRESS)
* ICMP allow/deny rules
* Firewall priorities
* GCP networking troubleshooting



=============================================================================================================================================================================

Let's Create the Firewall vm configuration at the service account level.


mkdir 2107 
cd 2107 

Create a vm via gcloud command 

gcloud compute instances create fw-vm-sa --zone us-central1-a --subnet=subnet-b --machine-type=e2-medium 



via gcloud command i am login 

gcloud compute ssh --zone "us-central1-a" "fw-vm-sa" --project <project-ID>

When you create the first time it may ask you enter the to generate the keys. (It will create the finger print ssh key pub and private key)


ls -la ./.ssh/

sudo apt update -y 

# INstall apache server 
sudo apt install apache2 -y 

ls /var/www/html/ 
ls  here content will display

curl localhost

sudo rm -rf /var/www/html/index.html

ls /var/www/html 
update new code html code and update 

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>

</body>
</html>

curl localhost 

inside the machine my apache server is running. But this not exposed to public network so open the port 80 in fierewall rule. 

Try to do via salary , allowing all over the service account. 

When you creating the VM the default service account is assigned to a that compute instance . we can modify this also.


gcloud compute firewall-rules create allow-ingress-80-sa \
    --direction=INGRESS \
    --priority=1000 \
    --network=custom-network \
    --action=ALLOW \
    --rules=tcp:80 \
    --source-ranges=0.0.0.0/0 \
    --target-service-accounts=<SERVICE_ACCOUNT_EMAIL>



Now try fetch from the apache server you will get --> Port 80 is allowed

Now delete the instance that we created 

gcloud compute instances delete  fw-vm-sa --zone us-central1-a

type yes if it asks

gcloud compute instances delete  fw-vm-sa --zone us-central1-a --quite

### Priority ?????  in firewal very important explain in details with scenario and example.


Create a Server

gcloud compute instances create priority-vm-example --zone us-central1-a --subnet=subnet-b --machine-type=e2-medium 

Login to VM 

gcloud compute ssh --zone "us-central1-a" "priority-vm-example" --project <project-ID>

sudo apt update -y 
curl localhost
sudo apt install apache2 -y 

curl localhost 

vim /var/www/html/index.html

<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>GCP</h1>
<p>Firewall Priority</p>

</body>
</html>

curl localhost 

Try to open via browser
It will not open 

Filter Network:custom-network

gcloud compute firewall-rules create allow-ingress-80-sa \
    --direction=INGRESS \
    --priority=1000 \
    --network=custom-network \
    --action=ALLOW \
    --rules=tcp:80 \
    --source-ranges=0.0.0.0/0 \
    --target-service-accounts=<SERVICE_ACCOUNT_EMAIL>

All can accesssssssssssssssssssssssssssssssss



whatsmyip   get the ipv4 

create the firwal rule

gcloud compute firewall-rules create deny-siva \
    --direction=INGRESS \
    --priority=1000 \
    --network=custom-network \
    --action=DENY \
    --rules=tcp:80 \
    --source-ranges=Ipv4/32 \
    --target-service-accounts=<SERVICE_ACCOUNT_EMAIL>

now i cannot access the web browser but other devices can acccessss....

Deny will have the highest priority
Best Practice keep the priority gap 

gcloud compute firewall-rules create deny-siva \
    --direction=INGRESS \
    --priority=900 \
    --network=custom-network \
    --action=DENY \
    --rules=tcp:80 \
    --source-ranges=Ipv4/32 \
    --target-service-accounts=<SERVICE_ACCOUNT_EMAIL>


Till now your VM by default go outside the server and download the packages. Egress default firewal is allowed. 
But i need filter. I want to go for particular Ip's only.

GKE-cart this firewall automatically created by the Google for it maintaining purpose. 

We can also perform the ALLOW and Deny for the egresss

Create 2 VM and perform the egress handson 

# Google Cloud Egress Control with Destination Filters and Firewall Rule Priorities

## Example: Egress Control with Destination Filters and Firewall Rule Priorities

---

### Step 1: Create Two VMs

We will create two VMs in the same subnet. One VM (`vm-allow-google`) will be allowed to ping Google's DNS server (`8.8.8.8`), while the other VM (`vm-deny-google`) will be blocked.

```bash
# Create VM1 (allowed to ping Google)
gcloud compute instances create vm-allow-google \
    --zone us-central1-a \
    --subnet=subnet-b \
    --machine-type=e2-medium \
    --tags=allow-ping-google

# Create VM2 (denied from pinging Google)
gcloud compute instances create vm-deny-google \
    --zone us-central1-a \
    --subnet=subnet-b \
    --machine-type=e2-medium
```

#### Explanation:
- **vm-allow-google** has the tag `allow-ping-google` and will be allowed to ping Google.
- **vm-deny-google** will not be tagged and will be blocked from pinging Google.

---

### Step 2: Set Up Egress Firewall Rules with Destination Filters

We will now create two egress rules:
1. **Allow ICMP traffic to Google (8.8.8.8) for `vm-allow-google`.**
2. **Block all ICMP traffic to Google (8.8.8.8) for all other VMs** using priority.

---

#### Rule 1: Allow Egress ICMP to Google for `vm-allow-google`

```bash
gcloud compute firewall-rules create allow-ping-google \
    --direction=EGRESS \
    --priority=900 \
    --network=custom-network \
    --action=ALLOW \
    --rules=icmp \
    --destination-ranges=8.8.8.8/32 \
    --target-tags=allow-ping-google
```

#### Explanation:
- **Priority**: `900` (lower priority number means higher precedence).
- **Action**: Allows ICMP traffic to the destination range `8.8.8.8/32` (Google's DNS).
- **Target Tags**: Applies only to VMs with the tag `allow-ping-google`, i.e., `vm-allow-google`.

---

#### Rule 2: Deny Egress ICMP to Google for All Other VMs

```bash
gcloud compute firewall-rules create deny-ping-google \
    --direction=EGRESS \
    --priority=1000 \
    --network=custom-network \
    --action=DENY \
    --rules=icmp \
    --destination-ranges=8.8.8.8/32
```

#### Explanation:
- **Priority**: `1000` (a higher number than `900`, so it only applies if the allow rule doesn’t match).
- **Action**: Denies ICMP traffic to the destination range `8.8.8.8/32`.
- This applies to all VMs that do **not** have the `allow-ping-google` tag.

---

### Step 3: Test Egress Traffic

1. **SSH into `vm-allow-google`**:

   ```bash
   gcloud compute ssh --zone us-central1-a vm-allow-google
   ```

   Once inside the VM, try to ping Google's DNS server (`8.8.8.8`):

   ```bash
   ping 8.8.8.8
   ```

   **Expected Result**: The ping should be successful, as the egress rule with a priority of `900` allows this VM to send ICMP traffic to `8.8.8.8`.

2. **SSH into `vm-deny-google`**:

   ```bash
   gcloud compute ssh --zone us-central1-a vm-deny-google
   ```

   Try to ping Google's DNS server (`8.8.8.8`):

   ```bash
   ping 8.8.8.8
   ```

   **Expected Result**: The ping should fail because the deny rule with a priority of `1000` blocks ICMP traffic to `8.8.8.8` for all VMs without the `allow-ping-google` tag.

---

### Step 4: Clean Up Resources

After testing, clean up the VMs and firewall rules:

```bash
# Delete the VMs
gcloud compute instances delete vm-allow-google --zone us-central1-a --quiet

gcloud compute instances delete vm-deny-google --zone us-central1-a --quiet




# Delete the firewall rules
gcloud compute firewall-rules delete allow-ping-google deny-ping-google --quiet

# Delete subnet-a
gcloud compute networks subnets delete subnet-a \
    --region=us-central1 --quiet

# Delete subnet-b
gcloud compute networks subnets delete subnet-b \
    --region=us-central1 --quiet

# Delete the custom VPC
gcloud compute networks delete custom-network --quiet

```

---

## Key Concepts Highlighted in This Example

- **Destination Filters**: The `destination-ranges` field limits the egress traffic to Google's DNS server IP `8.8.8.8/32`.
- **Network Tags**: The firewall rules use network tags (`allow-ping-google`) to selectively allow traffic from specific VMs.
- **Priority**: The priority of the firewall rules determines which rule is applied first. In this case, the allow rule (priority `900`) takes precedence over the deny rule (priority `1000`) for the tagged VM.

---

## Summary:
- **VM1 (`vm-allow-google`)** is allowed to send ICMP (ping) traffic to Google's DNS server (`8.8.8.8`) based on a firewall rule with a destination filter and higher priority.
- **VM2 (`vm-deny-google`)** is denied from sending ICMP traffic to Google's DNS server based on a lower-priority deny rule.
- The use of **egress rules**, **destination filters**, and **priority** ensures that traffic is allowed or blocked as needed.



8.8.8.8/32 This is the Google DNS IP 


ping 8.8.8.8 run this cmd on both server 



Rule 1: Allow Egress ICMP to Google for vm-allow-google

gcloud compute firewall-rules create allow-ping-google \
    --direction=EGRESS \
    --priority=900 \
    --network=custom-network \
    --action=ALLOW \
    --rules=icmp \
    --destination-ranges=8.8.8.8/32 \
    --target-tags=allow-ping-google    -> add this tag  for only one vm 

Rule 2: Deny Egress ICMP to Google for All Other VMs

gcloud compute firewall-rules create deny-ping-google \
    --direction=EGRESS \
    --priority=1000 \
    --network=custom-network \
    --action=DENY \
    --rules=icmp \
    --destination-ranges=8.8.8.8/32




Now observe the ping on both server.

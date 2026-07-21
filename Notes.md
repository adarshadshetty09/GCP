



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

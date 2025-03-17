### Install packer in Centos VM and SET the path

### Create the Service Account with 2 permission  compute engine instance admin v1  and  service account user  done continue

Next create a key and copy the JSON file

$env:GOOGLE_APPLICATION_CREDENTIALS="C:\Users\User\Desktop\GCP\GCP\GCP_Packer\fleet-bongo-453603-d1-a4688cf240ff.json"

List all the images

1. gcloud compute images list --project debian-cloud
2. gcloud compute firewall-rules delete allow-ssh --quiet
3. gcloud compute firewall-rules create allow-ssh --allow tcp:22 --network default --source-ranges 0.0.0.0/0 --target-tags yugabytedb-image

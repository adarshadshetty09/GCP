packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}
 
source "googlecompute" "yba-gcp" {
  project_id            = "spheric-mesh-465208-h9"
  service_account_email = "yba-image@spheric-mesh-465208-h9.iam.gserviceaccount.com"
#   region                = "australia-southeast1"
  zone                  = "us-south1-a"
#   network               = "vpc-packer"
#   subnetwork            = "subnet-packer"
#   omit_external_ip      = false
#   use_internal_ip       = false
  tags                  = ["yba-gcp-image-2"]
  ssh_username          = "yugabyte"
  machine_type          = "n2-standard-4"
  source_image_family   = "rhel-9"
  image_name   = "yba-gcp-{{timestamp}}"
  image_family = "yba-gcp-image"
  disk_size    = 250
  disk_type    = "pd-ssd"
 
  image_encryption_key {
    kmsKeyName  = "projects/spheric-mesh-465208-h9/locations/australia-southeast1/keyRings/key-packer/cryptoKeys/key-packer"
  }
}
 
build {
  sources = ["source.googlecompute.yba-gcp"]
 
  provisioner "shell" {
    inline = [
      "sudo yum install -y wget curl tar"
    ]
  }
 
  provisioner "ansible" {
    playbook_file   = "gagana.yaml"
    extra_arguments = ["-vv"]
    use_proxy       = false
  }
}
 
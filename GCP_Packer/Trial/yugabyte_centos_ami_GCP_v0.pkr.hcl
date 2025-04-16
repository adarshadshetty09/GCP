variable "project_id" {
  description = "The GCP project ID"
  default     = "fleet-bongo-453603-d1"
}

variable "zone" {
  description = "The GCP zone"
  default     = "us-central1-a"
}

variable "instance_type" {
  description = "The instance type for the VM"
  default     = "n1-standard-8"
}

variable "source_image" {
  description = "The GCP source image to use"
  default     = "centos-stream-9-v20250311"
}

variable "ssh_username" {
  description = "The SSH username"
  default     = "packer"
}

packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}


source "googlecompute" "yugabytedb" {
  project_id   = var.project_id
  zone         = var.zone
  machine_type = var.instance_type
  source_image = var.source_image
  ssh_username = var.ssh_username
  image_name   = "yugabytedb-ami-{{timestamp}}"
  disk_size    = 50
  disk_type    = "pd-ssd"


  tags = ["yugabytedb-image"]
}

build {
  sources = ["source.googlecompute.yugabytedb"]

  provisioner "shell" {
    inline = [
      "set -e",
      "start_time=$(date +%s)",
      "echo 'Starting YugabyteDB installation...'",

      # Install necessary packages for CentOS
      "sudo yum update -y",                # Use yum instead of apt-get for CentOS
      "sudo yum install -y wget curl tar", # Install required packages

      # Pre-download YugabyteDB or use an S3 bucket
      "wget https://downloads.yugabyte.com/releases/2.25.0.0/yugabyte-2.25.0.0-b489-linux-x86_64.tar.gz",

      "tar xvfz yugabyte-2.25.0.0-b489-linux-x86_64.tar.gz",
      "cd yugabyte-2.25.0.0/",

      "sudo ./bin/post_install.sh",
      "sudo chown -R packer:packer /home/packer/yugabyte-2.25.0.0/openssl-config",

      # Start YugabyteDB and check status
      "./bin/yugabyted start",
      "./bin/yugabyted status || { echo 'Setup failed.'; exit 1; }",

      "end_time=$(date +%s)",
      "execution_time=$((end_time - start_time))",
      "echo 'Setup completed successfully!'",
      "echo 'Total execution time: $execution_time seconds'"
    ]
  }
}

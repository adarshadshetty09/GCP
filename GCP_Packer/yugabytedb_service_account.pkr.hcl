packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1" # Or your desired versio
    }
  }
}

source "googlecompute" "nginx-image" {
  project_id   = "fleet-bongo-453603-d1"     # Your Project ID 
  source_image = "centos-stream-9-v20250311" # Or your desired base image
  zone         = "us-central1-a"             # Or your desired zone
  machine_type = "n1-standard-8"
  disk_size    = 30
  image_name   = "yugabytdb-image-{{timestamp}}"
  disk_type    = "pd-ssd"
  ssh_username = "packer"

  tags = ["yugabytedb-image"]

  # No explicit credentials here - Packer will use ADC
}

build {
  sources = ["source.googlecompute.nginx-image"]

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

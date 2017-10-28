variable credentials_path {
  description = "Path to provider credentials"
}

variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable machine_type {
  description = "Machine type"
  default     = "n1-standard-1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable ci_disk_image {
  description = "Image used for for ci server"
  default     = "ubuntu-1604-lts"
}

variable ci_disk_size {
  description = "Disk size for ci server"
  default     = "50"
}

variable vpc_source_ranges {
  description = "Allowed IP addresses"
  default     = ["0.0.0.0/0"]
}

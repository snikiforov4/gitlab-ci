variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable machine_type {
  description = "Machine type"
  default     = "n1-standard-1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable disk_image {
  description = "Image used for disk creation"
  default     = "ubuntu-1604-lts"
}

variable disk_size {
  description = "Disk size"
  default     = "50"
}

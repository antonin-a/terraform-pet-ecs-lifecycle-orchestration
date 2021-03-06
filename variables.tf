variable "instance_name" {
  description = "Name of the ECS instance and the associated volume"
  type        = map(string)
}

variable "instance_count" {
  description = "Number of instances to launch. "
  default     = "1"
  type        = number
}

variable "system_disk" {
  description = "System disks uuids"
  type        = map(string)
}

variable "data_disk" {
  description = "Data disks uuids"
  type        = map(string)
}

variable "attach_eip" {
  description = "Whether or not attache elastic IP (public IP)"
  default     = false
  type        = bool
}

variable "ext_net_name" {
  description = "External network name (do not change)"
  default     = "admin_external_net"
  type        = string
}

variable "image_id" {
  description = "ID of Image to use for the instance"
  type        = string
  default     = "0249222b-c9be-419b-a953-f47e91c3fc81" //Ubuntu 18.04 ID
}

variable "flavor_name" {
  description = "The flavor type of instance to start"
  type        = string
}

variable "network_id" {
  description = "The network ID to launch in"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch in"
  type        = string
}

variable "fixed_ip" {
  description = "The fixed private IP to use"
  type        = map(string)
}

variable "security_groups" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
}

variable "sysvol_type" {
  description = "The type of the system volume: SATA for standard I/O or SSD for high I/O"
  default     = "SATA"
  type        = string
}

variable "sysvol_size" {
  description = "The size of the system volume in GB"
  default     = "40"
  type        = number
}

variable "key_pair" {
  description = "The key pair name"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone to launch where"
  type        = string
}

variable "metadata" {
  description = "A mapping of metadata to assign to the resource"
  default     = {}
  type        = map(string)
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  default     = ""
  type        = string
}

variable "region" {
  description = "Region of the Flexible Engine provider"
  type        = string
  default     = "eu-west-0"
}

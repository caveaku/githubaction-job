variable "allocated_storage" {
  description = "The allocated storage for the database (in gigabytes)."
  type        = number
  default     = 20
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
  default     = "14.6"
}

variable "instance_class" {
  description = "The instance class of the RDS database."
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
}

variable "db_username" {
  description = "The username for the database."
  type        = string
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the RDS instance."
  type        = list(string)
}

variable "allowed_cidr_blocks" {
  description = "The CIDR blocks that are allowed to access the database."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "multi_az" {
  description = "Whether to create a multi-AZ RDS instance."
  type        = bool
  default     = false
}

variable "storage_type" {
  description = "The storage type for the database."
  type        = string
  default     = "gp2"
}

variable "backup_retention_period" {
  description = "The backup retention period in days."
  type        = number
  default     = 7
}

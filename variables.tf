
variable "cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}

variable "region" {
  type        = string
  description = "specifying deployment region"
  default     = "us-east-1"
}
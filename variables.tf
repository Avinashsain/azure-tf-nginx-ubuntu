# ============================================================
# Variables - declared here, values given in terraform.tfvars
# ============================================================

variable "project_name" {
  description = "Name of the project"
  type        = string
}
variable "subscription_id" {
  description = "Your Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "Azure region to deploy into"
  type        = string
  default     = "Central India"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B2s"
}

variable "html_title" {
  description = "Title shown in the browser tab for the Nginx page"
  type        = string
}

variable "html_body" {
  description = "HTML body content injected into the Nginx index page"
  type        = string
}
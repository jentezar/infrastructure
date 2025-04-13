variable "location" {
    description = "The Azure region where resources will be created"
    type        = string
    default     = "eastus"
}

variable "environment" {
    description = "The environment (dev, staging, prod)"
    type        = string
    default     = "dev"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "tags" {
    description = "A map of tags to add to all resources"
    type        = map(string)
    default     = {}
}

variable "subscription_id" {
    description = "The Azure subscription ID"
    type        = string
}

variable "tenant_id" {
    description = "The Azure tenant ID"
    type        = string
}

variable "app_name" {
    description = "The name of the application"
    type        = string
    default     = "practicums"
}

variable "postgres_admin_username" {
    description = "PostgreSQL admin username"
    type        = string
    default     = "p466admin"
}

variable "postgres_admin_password" {
    description = "PostgreSQL admin password"
    type        = string
    default     = "p466password321!"
    sensitive   = true
}

variable "kubernetes_version" {
    description = "The version of Kubernetes to use for the AKS cluster"
    type        = string
    default     = "1.31.6"
}
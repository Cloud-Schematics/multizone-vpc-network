##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
    description = "IBM Cloud region where all resources will be deployed"
    default     = "us-south"
}

variable resource_group_id {
    description = "ID of resource group to provision resources"
}

variable unique_id {
    description = "Prefix for all resources created in the module. Must begin with a letter."
    default     = "multizone-vpc"
}

variable tags {
    description = "A list of tags for resources created"
    default     = ["multizone-vpc-module"]
}

##############################################################################


##############################################################################
# VPC variables
##############################################################################

variable generation {
    description = "VPC generation. Can be 1 or 2"
    default     = 1
}

variable classic_access {
    description = "VPC Classic Access"
    default     = false
}

variable enable_public_gateway {
  description = "Enable public gateways, true or false"
  default     = true
}

##############################################################################


##############################################################################
# Network variables
##############################################################################

variable acl_rules {
  default = [
    {
      name        = "egress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "inbound"
    },
    {
      name        = "ingress"
      action      = "allow"
      source      = "0.0.0.0/0"
      destination = "0.0.0.0/0"
      direction   = "outbound"
    }
  ]
}

variable cidr_blocks {
    description = "List of CIDR blocks for the subnets"
    type        = "list"
    default     = [
        "10.10.10.0/24", 
        "10.10.11.0/24", 
        "10.10.12.0/24"
    ]  
}

##############################################################################
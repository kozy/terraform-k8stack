#-------------------------------------------#
# vCD Provider Variables
#-------------------------------------------#
variable "vcd_user" {
  description = "vCD Tenant User"
}
variable "vcd_pass" {
   description = "vCD Tenant Password"
}
variable "vcd_org" {
   description = "vCD Tenant Org"
}
variable "vcd_url" {
   description = "vCD Tenant URL"
}
variable "vcd_vdc" {
   description = "vCD Tenant VDC"
}
variable "vcd_max_retry_timeout" {
   description = "Retry Timeout"
   default = "240"
}
variable "vcd_edge" {
    description = "vCD Tenant Edge Gateway"
}
#-------------------------------------------#
# Catalog Variables
#-------------------------------------------#
variable "vcd_catalog" {
    description = "vCD Catalog Name"
}
variable "vcd_template" {
    description = "vCD Template Name"
}
variable "vcd_template_username" {
  description = "username for connecting to template os"
}

variable "vcd_template_pass" {
  description = "password for template user"
}
#-------------------------------------------#
# Network Variables
#-------------------------------------------#
variable "net_edge_ip" {
  description = "The edge's uplink ip"
}
variable "net_cp_name" {
  description = "Network Name of ControlPlane"
}
variable "net_cp_cidr" {
  description = "IP Range for CP in CIDR Notation(Example 0.0.0.0/8)"
}
variable "net_cp_dns" {
  type = "map"
  description = "IP Range for CP in CIDR Notation(Example 0.0.0.0/8)"
}variable "net_etcd_name" {
  description = "Network Name of ETCD"
}
variable "net_etcd_cidr" {
  description = "IP Range for etcd in CIDR Notation(Example 0.0.0.0/8)"
}
variable "net_etcd_dns" {
  type = "map"
  description = "IP Range for etcd in CIDR Notation(Example 0.0.0.0/8)"
}
variable "net_work_name" {
  description = "Network Name of Worker"
}
variable "net_work_cidr" {
  description = "IP Range for work in CIDR Notation(Example 0.0.0.0/8)"
}
variable "net_work_dns" {
  type = "map"
  description = "IP Range for etcd in CIDR Notation(Example 0.0.0.0/8)"
}
variable "net_rancher_ip" {
  description = "The IP of the connecting Rancher Box"
}
variable "net_snat_ip" {
  description = "The External IP providing snat"
}
#-------------------------------------------#
# Node Variables
#-------------------------------------------#
variable "node_cp" {
    description = "Prefix name of Worker Controller for Rancher"
}
variable "node_etcd" {
  description = "Prefix name of Worker for Rancher"
}

variable "node_work" {
  description = "Prefix name of Worker for Rancher"
}

variable "cluster_name" {
  description = "Name of your k8s cluster"
}
variable "node_cp_cnt" {
  description = "Number of deployed controlplanes"
  default = 1
}

variable "node_etcd_cnt" {
  description = "Number of deployed controlplanes"
  default = 1
}

variable "node_work_cnt" {
  description = "Number of deployed controlplanes"
  default = 1
}
variable "node_run_cmd" {
  description = "Command to add node configuration minus the node roles"
}

#-------------------------------------------#
# VPN Variables
#-------------------------------------------#
variable "vpn_edge" {
  description = "VPN's target connected edge"
}

variable "vpn_vdc" {
  description = "The virtual Datacenter that target VPN is a part of"
}

variable "vpn_edge_ip" {
  description = "Rancher's Ip for VPN connections"
}

variable "vpn_secret" {
  description = "Secret Password to use between the two Edges for VPN"
}

variable "vpn_enable" {
  description = "Do you need a VPN setup"
  default = "false"
}

variable "vpn_rancher_cidr" {
  description = "Local CIDR of the Rancher Management Subnet"
}

variable "vpn_jump_cidr" {
  description = "Local CIDR of the jumpbox Subnet"
}








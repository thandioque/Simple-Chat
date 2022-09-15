variable "do_token" {
description = "The Digital Ocean API token."    
type = string
default = "" 
}
variable "desktop_k8s_cluster_name" {
description = "Kubernetes Cluster Name"    
type = string
default = "" 
}
variable "desktop_k8s_cluster_region" {
description = "Kubernetes Cluster Region"    
type = string
default = "" 
}
variable "desktop_k8s_cluster_version" {
description = "Kubernetes Cluster Version"    
type = string
default = "" 
}
variable "desktop_node_name" {
description = "Node Pool Name"    
type = string
default = "" 
}
variable "desktop_node_size" {
description = "Node Pool Size"    
type = string
default = "" 
}
variable "desktop_node_count" {
description = "Node Pool Quantity"    
type = number
}
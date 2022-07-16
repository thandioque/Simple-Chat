variable "k8s_cluster_name" {
description = "The name for the Kubernetes cluster."    
type = string
default = ""  
}
variable "k8s_cluster_region" {
description = "The region where the Kubernetes cluster will be created."    
type = string
default = ""
}   
variable "k8s_cluster_version" {
description = "The version of Kubernetes used for the cluster."    
type = string
default = ""
}
variable "node_name" {
description = "The name for the node pool."    
type = string
default = ""
}
variable "node_size" {
description = "The type of Droplet (VM) to be used as workers in the node pool."    
type = string
default = ""
}
variable "node_count" {
description = "The number of Droplet (VM) instances in the node pool."    
type = number
}
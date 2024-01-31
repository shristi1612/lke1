variable k8s_version {
    description = "The desired Kubernetes version for this Kubernetes cluster "
    type = number
}
variable label {
    description = "This Kubernetes cluster's unique label"
    type = string
}
variable region {
    description = "This Kubernetes cluster's location"
    type = string
}
variable tags {
    description = "tags for cluster"
    type = list(string)
}
variable pool_type {
    description = "A Linode Type for all of the nodes in the Node Pool"
    type = string
}
variable pool_count {
    description = "The number of nodes in the Node Pool"
    type = number
}
variable autoscaler_min {
    description = "The minimum number of nodes to autoscale to"
    type = number
}
variable autoscaler_max {
    description = "The maximum number of nodes to autoscale to"
    type = number
}

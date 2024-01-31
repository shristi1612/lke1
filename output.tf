output "ins" {
    value = linode_lke_cluster.terraform_k8s.pool[0].nodes[0].instance_id
}


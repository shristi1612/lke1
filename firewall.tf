resource "linode_firewall" "my_firewall" {
  count = var.pool_count
  label = "my_firewall_${count.index}"
  inbound {
    label    = "allow-ssh"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "22"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }
  inbound_policy = "DROP"

  outbound {
    label    = "allow-http"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "ALL"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }

  outbound_policy = "ACCEPT"
  linodes = [linode_lke_cluster.terraform_k8s.pool[0].nodes[count.index].instance_id]
}

output "kubernetes_id" {
  description = "ID of the cluster"
  value       = digitalocean_kubernetes_cluster.personal_cluster.id
}
output "kubernetes_host" {
  description = "The hostname of the API server for the cluster"
  value       = digitalocean_kubernetes_cluster.personal_cluster.endpoint
}

output "kubernetes_urn" {
  description = "The uniform resource name (URN) for the Kubernetes cluster."
  value       = digitalocean_kubernetes_cluster.personal_cluster.urn
}

output "kubernetes_created" {
  description = "Created at timestamp for the cluster"
  value       = digitalocean_kubernetes_cluster.personal_cluster.created_at
}



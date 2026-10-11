output "pod_disruption_budgets_id" {
  description = "Map of id values across all pod_disruption_budgets, keyed the same as var.pod_disruption_budgets except keys with no id are omitted"
  value       = { for k, v in kubernetes_pod_disruption_budget.pod_disruption_budgets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pod_disruption_budgets_metadata" {
  description = "Map of metadata values across all pod_disruption_budgets, keyed the same as var.pod_disruption_budgets except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_pod_disruption_budget.pod_disruption_budgets : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "pod_disruption_budgets_spec" {
  description = "Map of spec values across all pod_disruption_budgets, keyed the same as var.pod_disruption_budgets except keys with no spec are omitted"
  value       = { for k, v in kubernetes_pod_disruption_budget.pod_disruption_budgets : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}


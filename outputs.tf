output "team_external_groups_id" {
  description = "Map of id values across all team_external_groups, keyed the same as var.team_external_groups except keys with no id are omitted"
  value       = { for k, v in grafana_team_external_group.team_external_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_external_groups_groups" {
  description = "Map of groups values across all team_external_groups, keyed the same as var.team_external_groups except keys with no groups are omitted"
  value       = { for k, v in grafana_team_external_group.team_external_groups : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "team_external_groups_team_id" {
  description = "Map of team_id values across all team_external_groups, keyed the same as var.team_external_groups except keys with no team_id are omitted"
  value       = { for k, v in grafana_team_external_group.team_external_groups : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}


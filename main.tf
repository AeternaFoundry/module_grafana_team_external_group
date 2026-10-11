resource "grafana_team_external_group" "team_external_groups" {
  for_each = var.team_external_groups

  groups  = each.value.groups
  team_id = each.value.team_id
}


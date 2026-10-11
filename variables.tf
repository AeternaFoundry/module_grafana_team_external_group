variable "team_external_groups" {
  description = <<EOT
Map of team_external_groups, attributes below
Required:
    - groups
    - team_id
EOT

  type = map(object({
    groups  = set(string)
    team_id = string
  }))
}


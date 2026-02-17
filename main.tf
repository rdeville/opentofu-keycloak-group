resource "keycloak_group" "this" {
  realm_id  = var.realm_id
  parent_id = var.parent_id

  name = var.name

  attributes = var.attributes
}

resource "keycloak_group_memberships" "this" {
  realm_id = var.realm_id
  group_id = keycloak_group.this.id

  members = var.members
}

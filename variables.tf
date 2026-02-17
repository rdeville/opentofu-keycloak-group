variable "realm_id" {
  type        = string
  description = <<-EOM
  The realm this user belongs to.
  EOM
}

variable "name" {
  type        = string
  description = <<-EOM
  The unique name of this group.
  EOM
}

variable "parent_id" {
  type        = string
  description = <<-EOM
  When define, the ID of the parent group.
  EOM

  default = ""
}

variable "attributes" {
  type        = map(string)
  description = <<-EOM
  A map representing attributes for the group. In order to add multivalued
  attributes, use ## to separate the values. Max length for each value is 255
  chars
  EOM

  default = {}
}

variable "members" {
  type        = set(string)
  description = <<-EOM
  A list of usernames that belong to this group.
  EOM

  default = []
}

<!-- markdownlint-disable -->
# 👋 Welcome to Keycloak User

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]

</center>

[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/opentofu/keycloak-user/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

---

## 🚀 Usage

### Deploy a group with only required variables

```hcl
module "keycloak_group" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-group.git"

  # Required variables
  realm_id = "my-realm"
  name     = "my-group"
}
```

### Deploy a group with optional variables

```hcl
module "keycloak_group" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-group.git"

  # Required variables
  realm_id  = "my-realm"
  name      = "my-group"

  # Optional variables
  parent_id = "parent-group-id"
}
```

### Deploy a group with user membership

```hcl
module "keycloak_group" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-group.git"

  # Required variables
  realm_id = "my-realm"
  name     = "my-group"

  # Optional variables
  members  = [
    "user1",
    "user2",
    "user3"
  ]
}
```

<!-- BEGIN TF-DOCS -->
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)
* [Outputs](#outputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [keycloak](https://search.opentofu.org/provider/keycloak/keycloak/):
  `~>5.6`

### Resources

* [resource.keycloak_group.this](https://registry.terraform.io/providers/keycloak/keycloak/latest/docs/resources/group)
  >
* [resource.keycloak_group_memberships.this](https://registry.terraform.io/providers/keycloak/keycloak/latest/docs/resources/group_memberships)
  >

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [realm_id](#realm_id)
* [name](#name)

##### `realm_id`

The realm this user belongs to.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `name`

The unique name of this group.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

#### Optional Inputs

* [parent_id](#parent_id)
* [attributes](#attributes)
* [members](#members)


##### `parent_id`

When define, the ID of the parent group.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `attributes`

A map representing attributes for the group. In order to add multivalued
attributes, use ## to separate the values. Max length for each value is 255
chars

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  map(string)
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>

##### `members`

A list of usernames that belong to this group.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  set(string)
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  []
  ```

  </div>
</details>
<!-- markdownlint-restore -->

### Outputs

* `this`:
  The deployed group information

</details>

<!-- END TF-DOCS -->

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page][issues_pages].

You can also take a look at the [CONTRIBUTING.md][contributing].

[issues_pages]: https://framagit.org/rdeville-public/opentofu/keycloak-user/-/issues
[contributing]: ./CONTRIBUTING.md

## 👤 Maintainers

- 📧 [**Romain Deville** \<code@romaindeville.fr\>](mailto:code@romaindeville.fr)

## 📝 License

Copyright © 2026, Romain Deville <code@romaindeville.fr>

This project is under following licenses (**OR**) :

- [MIT][main_license]
- [BEERWARE][beerware_license]

[main_license]: https://framagit.org/rdeville-public/opentofu/keycloak-user/blob/main/LICENSE
[beerware_license]: https://framagit.org/rdeville-public/opentofu/keycloak-user/blob/main/LICENSE.BEERWARE

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

#Tagging Policy Definition
resource "azurerm_policy_definition" "tag_policy" {
  name         = "${var.prefix}-require-tags-policy"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Require Tags: ${join(", ", var.required_tags)}"

  policy_rule = jsonencode({
    "if" : {
      "anyOf" : [
        for tag in var.required_tags : {
          "field" : "tags.${tag}",
          "exists" : "false"
        }
      ]
    },
    "then" : {
      "effect" : "deny"
    }
  })
}

# Secure Storage Policy Definition
resource "azurerm_policy_definition" "storage_policy" {
  name         = "${var.prefix}-secure-storage-policy"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Secure Storage: Enforce Encryption and Deny Public Blob Access"

  policy_rule = jsonencode({
    "if" : {
      "allOf" : [
        {
          "field" : "type",
          "equals" : "Microsoft.Storage/storageAccounts"
        },
        {
          "anyOf" : [
            {
              "field" : "Microsoft.Storage/storageAccounts/allowBlobPublicAccess",
              "equals" : true
            },
            {
              "field" : "Microsoft.Storage/storageAccounts/encryption.services.blob.enabled",
              "equals" : false
            }
          ]
        }
      ]
    },
    "then" : {
      "effect" : "deny"
    }
  })
}

# Assign Initiative to Resource Group
resource "azurerm_resource_group_policy_assignment" "tag_assignment" {
  name                 = "${var.prefix}-governance-assignment"
  policy_definition_id = azurerm_policy_definition.tag_policy.id
  resource_group_id    = data.azurerm_resource_group.rg.id
}
resource "azurerm_resource_group_policy_assignment" "storage_assignment" {
  name                 = "${var.prefix}-governance-assignment"
  policy_definition_id = azurerm_policy_definition.storage_policy.id
  resource_group_id    = data.azurerm_resource_group.rg.id
}

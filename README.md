# terraform-storage-account

Este repositorio servirá de soporte a los posts en [Medium](https://medium.com/@jamieynonan) sobre Terraform e IaC.

| Post | Branch |
|------|--------|
| [Terraform y Azure: Implementación de recursos en la nube de Microsoft](https://medium.com/@jamieynonan/terraform-y-azure-implementacion-de-recursos-en-la-nube-de-microsoft-27ea87c1049c) | feature/storage-account |
| [Gestión del estado en Terraform: Remote state](https://medium.com/@jamieynonan/gestion-del-estado-en-terraform-remote-state-e9e98645c93e) | feature/remote-states |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
# terraform-storage-account

:warning: Se archivo el repositorio y queda solo como parte de la evolución al nuevo repositorio: https://github.com/JamieYnonan/terraform-azurerm-storage-account.

---

Este repositorio servirá de soporte a los posts en [Medium](https://medium.com/@jamieynonan) sobre Terraform e IaC.

| Post | Branch |
|------|--------|
| [Terraform y Azure: Implementación de recursos en la nube de Microsoft](https://medium.com/@jamieynonan/terraform-y-azure-implementacion-de-recursos-en-la-nube-de-microsoft-27ea87c1049c) | feature/storage-account |
| [Gestión del estado en Terraform: Remote state](https://medium.com/@jamieynonan/gestion-del-estado-en-terraform-remote-state-e9e98645c93e) | feature/remote-states |
| [Terraform y testing: Pruebas con Terraform Test Framework](https://medium.com/@jamieynonan/terraform-y-testing-pruebas-con-terraform-test-framework-eb09eb235fb6) | feature/tests |
| [Seguridad en Terraform con Checkov: Análisis Estático para IaC](https://medium.com/@jamieynonan/seguridad-en-terraform-con-checkov-analisis-estatico-para-iac-e9591988291f) | feature/checkov |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.20.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_blob_change_feed_retention_in_days"></a> [blob\_change\_feed\_retention\_in\_days](#input\_blob\_change\_feed\_retention\_in\_days) | The days for the change feed retention. It must be greater than or equal to 3 and less than or equal to 30. Default is 7 | `number` | `7` | no |
| <a name="input_blob_container_delete_retention_policy_days"></a> [blob\_container\_delete\_retention\_policy\_days](#input\_blob\_container\_delete\_retention\_policy\_days) | The days for the container delete retention policy. It must be greater than or equal to 3 and less than or equal to 30. Default is 7 | `number` | `7` | no |
| <a name="input_blob_delete_retention_policy_days"></a> [blob\_delete\_retention\_policy\_days](#input\_blob\_delete\_retention\_policy\_days) | The days for the blob delete retention policy. It must be greater than or equal to 3 and less than or equal to 30. Default is 7 | `number` | `7` | no |
| <a name="input_project"></a> [project](#input\_project) | The project name. It must be lowercase and have a length between 3 and 18 characters | `string` | n/a | yes |
| <a name="input_rg_instance"></a> [rg\_instance](#input\_rg\_instance) | The resource group instance. It must be greater than or equal to 1 and less than or equal to 999 | `number` | n/a | yes |
| <a name="input_stn_instance"></a> [stn\_instance](#input\_stn\_instance) | The storage account instance. It must be greater than or equal to 1 and less than or equal to 999 | `number` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

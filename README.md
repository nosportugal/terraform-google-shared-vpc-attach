# terraform-google-shared-vpc-attach
This module attach service project to host project.

## Example Usage
```hcl
module "shared_vpc_attach" {
  source              = "./modules/shared_vpc_attach"
  host_project_id     = "var.host_project_id"
  service_project_id  = "var.service_project_id"
}

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| host\_project\_id | The ID of the host project which hosts the shared VPC | `string` | n/a | yes |
| service\_project\_id | The ID of the service project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# Overview

AWS Launch template을 생성하는 모듈입니다. 하단의 내용은 `terraform-docs`에 의해 생성되었습니다.

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.35.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag"></a> [additional\_tag](#input\_additional\_tag) | Additional tags for all resources. | `map(string)` | `{}` | no |
| <a name="input_block_device_mappings"></a> [block\_device\_mappings](#input\_block\_device\_mappings) | nested block: NestingList, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      device_name = string<br>      ebs = optional(object(<br>        {<br>          volume_size           = number<br>          volume_type           = optional(string)<br>          delete_on_termination = optional(bool)<br>          encrypted             = optional(bool)<br>          iops                  = optional(number)<br>          kms_key_id            = optional(string)<br>          snapshot_id           = optional(string)<br>          throughput            = optional(number)<br>        }<br>      ))<br>      no_device    = optional(string)<br>      virtual_name = optional(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_capacity_reservation_specification"></a> [capacity\_reservation\_specification](#input\_capacity\_reservation\_specification) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      capacity_reservation_preference = string<br>      capacity_reservation_target = list(object(<br>        {<br>          capacity_reservation_id = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_cpu_options"></a> [cpu\_options](#input\_cpu\_options) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      core_count       = number<br>      threads_per_core = number<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_credit_specification"></a> [credit\_specification](#input\_credit\_specification) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      cpu_credits = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_default_version"></a> [default\_version](#input\_default\_version) | (optional) | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (optional) | `string` | `null` | no |
| <a name="input_disable_api_termination"></a> [disable\_api\_termination](#input\_disable\_api\_termination) | (optional) | `bool` | `null` | no |
| <a name="input_ebs_optimized"></a> [ebs\_optimized](#input\_ebs\_optimized) | (optional) | `string` | `null` | no |
| <a name="input_elastic_gpu_specifications"></a> [elastic\_gpu\_specifications](#input\_elastic\_gpu\_specifications) | nested block: NestingList, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      type = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_elastic_inference_accelerator"></a> [elastic\_inference\_accelerator](#input\_elastic\_inference\_accelerator) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      type = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_enclave_options"></a> [enclave\_options](#input\_enclave\_options) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      enabled = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_hibernation_options"></a> [hibernation\_options](#input\_hibernation\_options) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      configured = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | nested block: NestingList, min items: 0, max items: 1 | <pre>object(<br>    {<br>      arn  = optional(string)<br>      name = optional(string)<br>    }<br>  )</pre> | `{}` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | (optional) | `string` | `null` | no |
| <a name="input_instance_initiated_shutdown_behavior"></a> [instance\_initiated\_shutdown\_behavior](#input\_instance\_initiated\_shutdown\_behavior) | (optional) | `string` | `null` | no |
| <a name="input_instance_market_options"></a> [instance\_market\_options](#input\_instance\_market\_options) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      market_type = string<br>      spot_options = list(object(<br>        {<br>          block_duration_minutes         = number<br>          instance_interruption_behavior = string<br>          max_price                      = string<br>          spot_instance_type             = string<br>          valid_until                    = string<br>        }<br>      ))<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | (optional) | `string` | `null` | no |
| <a name="input_kernel_id"></a> [kernel\_id](#input\_kernel\_id) | (optional) | `string` | `null` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (optional) | `string` | `null` | no |
| <a name="input_license_specification"></a> [license\_specification](#input\_license\_specification) | nested block: NestingSet, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      license_configuration_arn = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_metadata_options"></a> [metadata\_options](#input\_metadata\_options) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      http_endpoint               = string<br>      http_put_response_hop_limit = number<br>      http_tokens                 = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      enabled = bool<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | (optional) | `string` | `null` | no |
| <a name="input_name_tag_convention"></a> [name\_tag\_convention](#input\_name\_tag\_convention) | The name tag convention of all resources. | <pre>object({<br>    project_name   = string<br>    stage          = string<br>  })</pre> | <pre>{<br>  "project_name": "tf",<br>  "stage": "poc"<br>}</pre> | no |
| <a name="input_network_interfaces"></a> [network\_interfaces](#input\_network\_interfaces) | nested block: NestingList, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      associate_carrier_ip_address = string<br>      associate_public_ip_address  = string<br>      delete_on_termination        = string<br>      description                  = string<br>      device_index                 = number<br>      ipv4_address_count           = number<br>      ipv4_addresses               = set(string)<br>      ipv6_address_count           = number<br>      ipv6_addresses               = set(string)<br>      network_interface_id         = string<br>      private_ip_address           = string<br>      security_groups              = set(string)<br>      subnet_id                    = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_placement"></a> [placement](#input\_placement) | nested block: NestingList, min items: 0, max items: 1 | <pre>set(object(<br>    {<br>      affinity          = string<br>      availability_zone = string<br>      group_name        = string<br>      host_id           = string<br>      partition_number  = number<br>      spread_domain     = string<br>      tenancy           = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_ram_disk_id"></a> [ram\_disk\_id](#input\_ram\_disk\_id) | (optional) | `string` | `null` | no |
| <a name="input_security_group_names"></a> [security\_group\_names](#input\_security\_group\_names) | (optional) For EC2-Classic | `set(string)` | `null` | no |
| <a name="input_tag_specifications"></a> [tag\_specifications](#input\_tag\_specifications) | nested block: NestingList, min items: 0, max items: 0 | <pre>set(object(<br>    {<br>      resource_type = string<br>      tags          = map(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_update_default_version"></a> [update\_default\_version](#input\_update\_default\_version) | (optional) | `bool` | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | (optional) | `string` | `null` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | (optional) | `set(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | returns a string |
| <a name="output_default_version"></a> [default\_version](#output\_default\_version) | returns a number |
| <a name="output_id"></a> [id](#output\_id) | returns a string |
| <a name="output_latest_version"></a> [latest\_version](#output\_latest\_version) | returns a number |
| <a name="output_name"></a> [name](#output\_name) | returns a string |
| <a name="output_this"></a> [this](#output\_this) | n/a |

## Example
```hcl
image_id = "ami-0b827f3319f7447c6"
instance_type = "c5.4xlarge"
security_group_ids = [ ]
block_devices = [{
  device_name = "/dev/xvda"
  ebs = {
    volume_type = "gp3"
    volume_size = 100
    iops = 3000
    throughput = 125
    delete_on_termination = false
  }
}]
iam_instance_profile = { }
tag_specifications = [ ]

```
<!-- END_TF_DOCS -->
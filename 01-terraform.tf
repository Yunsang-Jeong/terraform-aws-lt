terraform {
  required_version = ">= 0.14.0"
  experiments      = [module_variable_optional_attrs]

  # https://www.tfwriter.com/aws/d/aws_launch_configuration.html
  required_providers {
    aws = ">= 3.35.0"
  }
}

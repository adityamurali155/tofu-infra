module "s3_bucket" {
  source = "registry.opentofu.org/terraform-aws-modules/s3-bucket/aws"

  bucket = "env0-tofu-module-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
module "desafio_devops_picpay_s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.s3_bucket_name

  website = {
    index_document = "index.html"
    error_document = "error.html"
  }

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  # outras configuracoes aqui

}


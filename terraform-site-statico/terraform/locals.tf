locals {

  has_domain = var.domain != ""
  domain     = local.has_domain ? var.domain : random_pet.website.id

  // CloudFront está apontando para essa variável no Bloco Dinâmico "default_cache_behavior", "origin"
  regional_domain = module.website.regional_domain_name

  common_tags = {
    Project   = "AWS com Terraform"
    Service   = "Static Website"
    CreatedAt = "2023-02-2023"
  }
}
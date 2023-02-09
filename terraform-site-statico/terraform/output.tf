output "website-url" {

  value = local.has_domain ? var.domain : module.website.website

}

output "cdn_url" {

    value = aws_cloudfront_distribution.this.domain_name
  
}

output "distribuition_id" {

    value = aws_cloudfront_distribution.this.id
}
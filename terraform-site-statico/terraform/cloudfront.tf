resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {

  comment = local.domain

}

resource "aws_cloudfront_distribution" "this" {

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Managed by Terraform"
  default_root_object = "index.html"


  logging_config {
    bucket           = module.logs.domain_name
    prefix           = "cdn/"
    include_cookies = true 
  }

  default_cache_behavior {
    allowed_methods        = ["HEAD", "GET", "OPTIONS", "DELETE", "PATCH", "POST", "PUT"]
    cached_methods         = ["HEAD", "GET", "OPTIONS"]
    target_origin_id       = local.regional_domain
    viewer_protocol_policy = "redirect-to-https"

    // Tempo de cache
    min_ttl     = 0
    default_ttl = 3600
    max_ttl     = 86400

    forwarded_values {
      query_string = false
      headers      = ["Oringin"]

      cookies {
        forward = "none"
      }
    }
  }

  origin {
    domain_name = local.regional_domain
    origin_id   = local.regional_domain

    s3_origin_config {

      origin_access_identity = aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path

    }

  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
      // locations        = ["US", "CA", "GB", "DE"]
    }
  }

  viewer_certificate {

    cloudfront_default_certificate = true


  }
  tags = local.common_tags

}
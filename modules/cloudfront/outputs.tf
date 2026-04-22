output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "distribution_id" {
  value = aws_cloudfront_distribution.cdn.id
}
output "cloudfront_arn" {
  value = aws_cloudfront_distribution.cdn.arn
}

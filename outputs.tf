output "cloudfront_realtime_log_configs_id" {
  description = "Map of id values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_realtime_log_configs_arn" {
  description = "Map of arn values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_realtime_log_configs_endpoint" {
  description = "Map of endpoint values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "cloudfront_realtime_log_configs_fields" {
  description = "Map of fields values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.fields if v.fields != null && length(v.fields) > 0 }
}
output "cloudfront_realtime_log_configs_name" {
  description = "Map of name values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudfront_realtime_log_configs_sampling_rate" {
  description = "Map of sampling_rate values across all cloudfront_realtime_log_configs, keyed the same as var.cloudfront_realtime_log_configs"
  value       = { for k, v in aws_cloudfront_realtime_log_config.cloudfront_realtime_log_configs : k => v.sampling_rate if v.sampling_rate != null }
}


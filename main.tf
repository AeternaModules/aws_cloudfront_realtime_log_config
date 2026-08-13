resource "aws_cloudfront_realtime_log_config" "cloudfront_realtime_log_configs" {
  for_each = var.cloudfront_realtime_log_configs

  fields        = each.value.fields
  name          = each.value.name
  sampling_rate = each.value.sampling_rate

  endpoint {
    kinesis_stream_config {
      role_arn   = each.value.endpoint.kinesis_stream_config.role_arn
      stream_arn = each.value.endpoint.kinesis_stream_config.stream_arn
    }
    stream_type = each.value.endpoint.stream_type
  }
}


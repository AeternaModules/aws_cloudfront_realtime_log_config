variable "cloudfront_realtime_log_configs" {
  description = <<EOT
Map of cloudfront_realtime_log_configs, attributes below
Required:
    - fields
    - name
    - sampling_rate
    - endpoint (block):
        - kinesis_stream_config (required, block):
            - role_arn (required)
            - stream_arn (required)
        - stream_type (required)
EOT

  type = map(object({
    fields        = set(string)
    name          = string
    sampling_rate = number
    endpoint = object({
      kinesis_stream_config = object({
        role_arn   = string
        stream_arn = string
      })
      stream_type = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudfront_realtime_log_configs : (
        v.sampling_rate >= 1 && v.sampling_rate <= 100
      )
    ])
    error_message = "must be between 1 and 100"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


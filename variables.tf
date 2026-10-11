variable "bigquery_jobs" {
  description = <<EOT
Map of bigquery_jobs, attributes below
Required:
    - job_id
Optional:
    - job_timeout_ms
    - labels
    - location
    - project
    - copy (block):
        - create_disposition (optional)
        - destination_encryption_configuration (optional, block):
            - kms_key_name (required)
        - destination_table (optional, block):
            - dataset_id (optional)
            - project_id (optional)
            - table_id (required)
        - source_tables (required, block):
            - dataset_id (optional)
            - project_id (optional)
            - table_id (required)
        - write_disposition (optional)
    - extract (block):
        - compression (optional)
        - destination_format (optional)
        - destination_uris (required)
        - field_delimiter (optional)
        - print_header (optional)
        - source_model (optional, block):
            - dataset_id (required)
            - model_id (required)
            - project_id (required)
        - source_table (optional, block):
            - dataset_id (optional)
            - project_id (optional)
            - table_id (required)
        - use_avro_logical_types (optional)
    - load (block):
        - allow_jagged_rows (optional)
        - allow_quoted_newlines (optional)
        - autodetect (optional)
        - create_disposition (optional)
        - destination_encryption_configuration (optional, block):
            - kms_key_name (required)
        - destination_table (required, block):
            - dataset_id (optional)
            - project_id (optional)
            - table_id (required)
        - encoding (optional)
        - field_delimiter (optional)
        - ignore_unknown_values (optional)
        - json_extension (optional)
        - max_bad_records (optional)
        - null_marker (optional)
        - parquet_options (optional, block):
            - enable_list_inference (optional)
            - enum_as_string (optional)
        - projection_fields (optional)
        - quote (optional)
        - schema_update_options (optional)
        - skip_leading_rows (optional)
        - source_format (optional)
        - source_uris (required)
        - time_partitioning (optional, block):
            - expiration_ms (optional)
            - field (optional)
            - type (required)
        - write_disposition (optional)
    - query (block):
        - allow_large_results (optional)
        - connection_properties (optional, block):
            - key (required)
            - value (required)
        - create_disposition (optional)
        - default_dataset (optional, block):
            - dataset_id (required)
            - project_id (optional)
        - destination_encryption_configuration (optional, block):
            - kms_key_name (required)
        - destination_table (optional, block):
            - dataset_id (optional)
            - project_id (optional)
            - table_id (required)
        - flatten_results (optional)
        - maximum_billing_tier (optional)
        - maximum_bytes_billed (optional)
        - parameter_mode (optional)
        - priority (optional)
        - query (required)
        - schema_update_options (optional)
        - script_options (optional, block):
            - key_result_statement (optional)
            - statement_byte_budget (optional)
            - statement_timeout_ms (optional)
        - use_legacy_sql (optional)
        - use_query_cache (optional)
        - user_defined_function_resources (optional, block):
            - inline_code (optional)
            - resource_uri (optional)
        - write_disposition (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    job_id         = string
    job_timeout_ms = optional(string)
    labels         = optional(map(string))
    location       = optional(string)
    project        = optional(string)
    copy = optional(object({
      create_disposition = optional(string)
      destination_encryption_configuration = optional(object({
        kms_key_name = string
      }))
      destination_table = optional(object({
        dataset_id = optional(string)
        project_id = optional(string)
        table_id   = string
      }))
      source_tables = list(object({
        dataset_id = optional(string)
        project_id = optional(string)
        table_id   = string
      }))
      write_disposition = optional(string)
    }))
    extract = optional(object({
      compression        = optional(string)
      destination_format = optional(string)
      destination_uris   = list(string)
      field_delimiter    = optional(string)
      print_header       = optional(bool)
      source_model = optional(object({
        dataset_id = string
        model_id   = string
        project_id = string
      }))
      source_table = optional(object({
        dataset_id = optional(string)
        project_id = optional(string)
        table_id   = string
      }))
      use_avro_logical_types = optional(bool)
    }))
    load = optional(object({
      allow_jagged_rows     = optional(bool)
      allow_quoted_newlines = optional(bool)
      autodetect            = optional(bool)
      create_disposition    = optional(string)
      destination_encryption_configuration = optional(object({
        kms_key_name = string
      }))
      destination_table = object({
        dataset_id = optional(string)
        project_id = optional(string)
        table_id   = string
      })
      encoding              = optional(string)
      field_delimiter       = optional(string)
      ignore_unknown_values = optional(bool)
      json_extension        = optional(string)
      max_bad_records       = optional(number)
      null_marker           = optional(string)
      parquet_options = optional(object({
        enable_list_inference = optional(bool)
        enum_as_string        = optional(bool)
      }))
      projection_fields     = optional(list(string))
      quote                 = optional(string)
      schema_update_options = optional(list(string))
      skip_leading_rows     = optional(number)
      source_format         = optional(string)
      source_uris           = list(string)
      time_partitioning = optional(object({
        expiration_ms = optional(string)
        field         = optional(string)
        type          = string
      }))
      write_disposition = optional(string)
    }))
    query = optional(object({
      allow_large_results = optional(bool)
      connection_properties = optional(list(object({
        key   = string
        value = string
      })))
      create_disposition = optional(string)
      default_dataset = optional(object({
        dataset_id = string
        project_id = optional(string)
      }))
      destination_encryption_configuration = optional(object({
        kms_key_name = string
      }))
      destination_table = optional(object({
        dataset_id = optional(string)
        project_id = optional(string)
        table_id   = string
      }))
      flatten_results       = optional(bool)
      maximum_billing_tier  = optional(number)
      maximum_bytes_billed  = optional(string)
      parameter_mode        = optional(string)
      priority              = optional(string)
      query                 = string
      schema_update_options = optional(list(string))
      script_options = optional(object({
        key_result_statement  = optional(string)
        statement_byte_budget = optional(string)
        statement_timeout_ms  = optional(string)
      }))
      use_legacy_sql  = optional(bool)
      use_query_cache = optional(bool)
      user_defined_function_resources = optional(list(object({
        inline_code  = optional(string)
        resource_uri = optional(string)
      })))
      write_disposition = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bigquery_jobs : (
        v.copy == null || (length(v.copy.source_tables) >= 1)
      )
    ])
    error_message = "Each source_tables list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.bigquery_jobs : (
        v.load == null || (v.load.skip_leading_rows == null || (v.load.skip_leading_rows >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


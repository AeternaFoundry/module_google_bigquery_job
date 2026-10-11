output "bigquery_jobs_id" {
  description = "Map of id values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no id are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_jobs_copy" {
  description = "Map of copy values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no copy are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => one(v.copy) if v.copy != null && length(v.copy) > 0 }
}
output "bigquery_jobs_effective_labels" {
  description = "Map of effective_labels values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no effective_labels are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "bigquery_jobs_extract" {
  description = "Map of extract values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no extract are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => one(v.extract) if v.extract != null && length(v.extract) > 0 }
}
output "bigquery_jobs_job_id" {
  description = "Map of job_id values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no job_id are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "bigquery_jobs_job_timeout_ms" {
  description = "Map of job_timeout_ms values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no job_timeout_ms are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.job_timeout_ms if v.job_timeout_ms != null && length(v.job_timeout_ms) > 0 }
}
output "bigquery_jobs_job_type" {
  description = "Map of job_type values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no job_type are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.job_type if v.job_type != null && length(v.job_type) > 0 }
}
output "bigquery_jobs_labels" {
  description = "Map of labels values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no labels are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "bigquery_jobs_load" {
  description = "Map of load values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no load are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => one(v.load) if v.load != null && length(v.load) > 0 }
}
output "bigquery_jobs_location" {
  description = "Map of location values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no location are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_jobs_project" {
  description = "Map of project values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no project are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_jobs_query" {
  description = "Map of query values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no query are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => one(v.query) if v.query != null && length(v.query) > 0 }
}
output "bigquery_jobs_status" {
  description = "Map of status values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no status are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.status if v.status != null && length(v.status) > 0 }
}
output "bigquery_jobs_terraform_labels" {
  description = "Map of terraform_labels values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no terraform_labels are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "bigquery_jobs_user_email" {
  description = "Map of user_email values across all bigquery_jobs, keyed the same as var.bigquery_jobs except keys with no user_email are omitted"
  value       = { for k, v in google_bigquery_job.bigquery_jobs : k => v.user_email if v.user_email != null && length(v.user_email) > 0 }
}


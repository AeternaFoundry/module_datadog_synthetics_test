output "synthetics_tests_id" {
  description = "Map of id values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no id are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_tests_api_step" {
  description = "Map of api_step values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no api_step are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.api_step if v.api_step != null && length(v.api_step) > 0 }
  sensitive   = true
}
output "synthetics_tests_assertion" {
  description = "Map of assertion values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no assertion are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.assertion if v.assertion != null && length(v.assertion) > 0 }
}
output "synthetics_tests_browser_step" {
  description = "Map of browser_step values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no browser_step are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.browser_step if v.browser_step != null && length(v.browser_step) > 0 }
}
output "synthetics_tests_browser_variable" {
  description = "Map of browser_variable values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no browser_variable are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.browser_variable if v.browser_variable != null && length(v.browser_variable) > 0 }
}
output "synthetics_tests_config_initial_application_arguments" {
  description = "Map of config_initial_application_arguments values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no config_initial_application_arguments are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.config_initial_application_arguments if v.config_initial_application_arguments != null && length(v.config_initial_application_arguments) > 0 }
}
output "synthetics_tests_config_variable" {
  description = "Map of config_variable values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no config_variable are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.config_variable if v.config_variable != null && length(v.config_variable) > 0 }
}
output "synthetics_tests_device_ids" {
  description = "Map of device_ids values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no device_ids are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.device_ids if v.device_ids != null && length(v.device_ids) > 0 }
}
output "synthetics_tests_force_delete_dependencies" {
  description = "Map of force_delete_dependencies values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no force_delete_dependencies are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.force_delete_dependencies if v.force_delete_dependencies != null }
}
output "synthetics_tests_locations" {
  description = "Map of locations values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no locations are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.locations if v.locations != null && length(v.locations) > 0 }
}
output "synthetics_tests_message" {
  description = "Map of message values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no message are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.message if v.message != null && length(v.message) > 0 }
}
output "synthetics_tests_mobile_options_list" {
  description = "Map of mobile_options_list values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no mobile_options_list are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.mobile_options_list) if v.mobile_options_list != null && length(v.mobile_options_list) > 0 }
}
output "synthetics_tests_mobile_step" {
  description = "Map of mobile_step values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no mobile_step are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.mobile_step if v.mobile_step != null && length(v.mobile_step) > 0 }
}
output "synthetics_tests_monitor_id" {
  description = "Map of monitor_id values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no monitor_id are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.monitor_id if v.monitor_id != null }
}
output "synthetics_tests_name" {
  description = "Map of name values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no name are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synthetics_tests_options_list" {
  description = "Map of options_list values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no options_list are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.options_list) if v.options_list != null && length(v.options_list) > 0 }
  sensitive   = true
}
output "synthetics_tests_request_basicauth" {
  description = "Map of request_basicauth values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_basicauth are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.request_basicauth) if v.request_basicauth != null && length(v.request_basicauth) > 0 }
  sensitive   = true
}
output "synthetics_tests_request_client_certificate" {
  description = "Map of request_client_certificate values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_client_certificate are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.request_client_certificate) if v.request_client_certificate != null && length(v.request_client_certificate) > 0 }
  sensitive   = true
}
output "synthetics_tests_request_definition" {
  description = "Map of request_definition values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_definition are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.request_definition) if v.request_definition != null && length(v.request_definition) > 0 }
}
output "synthetics_tests_request_file" {
  description = "Map of request_file values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_file are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.request_file if v.request_file != null && length(v.request_file) > 0 }
}
output "synthetics_tests_request_headers" {
  description = "Map of request_headers values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_headers are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.request_headers if v.request_headers != null && length(v.request_headers) > 0 }
}
output "synthetics_tests_request_metadata" {
  description = "Map of request_metadata values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_metadata are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.request_metadata if v.request_metadata != null && length(v.request_metadata) > 0 }
}
output "synthetics_tests_request_proxy" {
  description = "Map of request_proxy values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_proxy are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => one(v.request_proxy) if v.request_proxy != null && length(v.request_proxy) > 0 }
}
output "synthetics_tests_request_query" {
  description = "Map of request_query values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no request_query are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.request_query if v.request_query != null && length(v.request_query) > 0 }
}
output "synthetics_tests_set_cookie" {
  description = "Map of set_cookie values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no set_cookie are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.set_cookie if v.set_cookie != null && length(v.set_cookie) > 0 }
}
output "synthetics_tests_status" {
  description = "Map of status values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no status are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.status if v.status != null && length(v.status) > 0 }
}
output "synthetics_tests_subtype" {
  description = "Map of subtype values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no subtype are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.subtype if v.subtype != null && length(v.subtype) > 0 }
}
output "synthetics_tests_tags" {
  description = "Map of tags values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no tags are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "synthetics_tests_type" {
  description = "Map of type values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no type are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.type if v.type != null && length(v.type) > 0 }
}
output "synthetics_tests_variables_from_script" {
  description = "Map of variables_from_script values across all synthetics_tests, keyed the same as var.synthetics_tests except keys with no variables_from_script are omitted"
  value       = { for k, v in datadog_synthetics_test.synthetics_tests : k => v.variables_from_script if v.variables_from_script != null && length(v.variables_from_script) > 0 }
}


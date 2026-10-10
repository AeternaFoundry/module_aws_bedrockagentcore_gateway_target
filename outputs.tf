output "bedrockagentcore_gateway_targets_credential_provider_configuration" {
  description = "Map of credential_provider_configuration values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.credential_provider_configuration if v.credential_provider_configuration != null && length(v.credential_provider_configuration) > 0 }
}
output "bedrockagentcore_gateway_targets_description" {
  description = "Map of description values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_gateway_targets_gateway_identifier" {
  description = "Map of gateway_identifier values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.gateway_identifier if v.gateway_identifier != null && length(v.gateway_identifier) > 0 }
}
output "bedrockagentcore_gateway_targets_metadata_configuration" {
  description = "Map of metadata_configuration values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.metadata_configuration if v.metadata_configuration != null && length(v.metadata_configuration) > 0 }
}
output "bedrockagentcore_gateway_targets_name" {
  description = "Map of name values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagentcore_gateway_targets_private_endpoint" {
  description = "Map of private_endpoint values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.private_endpoint if v.private_endpoint != null && length(v.private_endpoint) > 0 }
}
output "bedrockagentcore_gateway_targets_region" {
  description = "Map of region values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_gateway_targets_target_configuration" {
  description = "Map of target_configuration values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.target_configuration if v.target_configuration != null && length(v.target_configuration) > 0 }
}
output "bedrockagentcore_gateway_targets_target_id" {
  description = "Map of target_id values across all bedrockagentcore_gateway_targets, keyed the same as var.bedrockagentcore_gateway_targets"
  value       = { for k, v in aws_bedrockagentcore_gateway_target.bedrockagentcore_gateway_targets : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}


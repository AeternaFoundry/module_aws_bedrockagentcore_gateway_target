variable "bedrockagentcore_gateway_targets" {
  description = <<EOT
Map of bedrockagentcore_gateway_targets, attributes below
Required:
    - gateway_identifier
    - name
Optional:
    - description
    - region
    - credential_provider_configuration (block):
        - api_key (optional, block):
            - credential_location (optional)
            - credential_parameter_name (optional)
            - credential_prefix (optional)
            - provider_arn (required)
        - caller_iam_credentials (optional, block):
            - region (optional)
            - service (required)
        - gateway_iam_role (optional, block):
            - region (optional)
            - service (optional)
        - jwt_passthrough (optional, block):
        - oauth (optional, block):
            - custom_parameters (optional)
            - default_return_url (optional)
            - grant_type (optional)
            - provider_arn (required)
            - scopes (required)
    - metadata_configuration (block):
        - allowed_query_parameters (optional)
        - allowed_request_headers (optional)
        - allowed_response_headers (optional)
    - private_endpoint (block):
        - managed_vpc_resource (optional, block):
            - endpoint_ip_address_type (required)
            - routing_domain (optional)
            - security_group_ids (optional)
            - subnet_ids (required)
            - tags (optional)
            - vpc_identifier (required)
        - self_managed_lattice_resource (optional, block):
            - resource_configuration_identifier (required)
    - target_configuration (block):
        - http (optional, block):
            - agentcore_runtime (optional, block):
                - arn (required)
                - qualifier (optional)
        - mcp (optional, block):
            - api_gateway (optional, block):
                - api_gateway_tool_configuration (optional, block):
                    - tool_filter (optional, block):
                        - filter_path (required)
                        - methods (required)
                    - tool_override (optional, block):
                        - description (optional)
                        - method (required)
                        - name (required)
                        - path (required)
                - rest_api_id (required)
                - stage (required)
            - lambda (optional, block):
                - lambda_arn (required)
                - tool_schema (optional, block):
                    - inline_payload (optional, block):
                        - description (required)
                        - input_schema (optional, block):
                            - description (optional)
                            - items (optional, block):
                                - description (optional)
                                - items (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - properties_json (optional)
                                    - type (required)
                                - property (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - name (required)
                                    - properties_json (optional)
                                    - required (optional)
                                    - type (required)
                                - type (required)
                            - property (optional, block):
                                - description (optional)
                                - items (optional, block):
                                    - description (optional)
                                    - items (optional, block):
                                        - description (optional)
                                        - items_json (optional)
                                        - properties_json (optional)
                                        - type (required)
                                    - property (optional, block):
                                        - description (optional)
                                        - items_json (optional)
                                        - name (required)
                                        - properties_json (optional)
                                        - required (optional)
                                        - type (required)
                                    - type (required)
                                - name (required)
                                - property (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - name (required)
                                    - properties_json (optional)
                                    - required (optional)
                                    - type (required)
                                - required (optional)
                                - type (required)
                            - type (required)
                        - name (required)
                        - output_schema (optional, block):
                            - description (optional)
                            - items (optional, block):
                                - description (optional)
                                - items (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - properties_json (optional)
                                    - type (required)
                                - property (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - name (required)
                                    - properties_json (optional)
                                    - required (optional)
                                    - type (required)
                                - type (required)
                            - property (optional, block):
                                - description (optional)
                                - items (optional, block):
                                    - description (optional)
                                    - items (optional, block):
                                        - description (optional)
                                        - items_json (optional)
                                        - properties_json (optional)
                                        - type (required)
                                    - property (optional, block):
                                        - description (optional)
                                        - items_json (optional)
                                        - name (required)
                                        - properties_json (optional)
                                        - required (optional)
                                        - type (required)
                                    - type (required)
                                - name (required)
                                - property (optional, block):
                                    - description (optional)
                                    - items_json (optional)
                                    - name (required)
                                    - properties_json (optional)
                                    - required (optional)
                                    - type (required)
                                - required (optional)
                                - type (required)
                            - type (required)
                    - s3 (optional, block):
                        - bucket_owner_account_id (optional)
                        - uri (optional)
            - mcp_server (optional, block):
                - endpoint (required)
                - listing_mode (optional)
            - open_api_schema (optional, block):
                - inline_payload (optional, block):
                    - payload (required)
                - s3 (optional, block):
                    - bucket_owner_account_id (optional)
                    - uri (optional)
            - smithy_model (optional, block):
                - inline_payload (optional, block):
                    - payload (required)
                - s3 (optional, block):
                    - bucket_owner_account_id (optional)
                    - uri (optional)
EOT

  type = map(object({
    gateway_identifier = string
    name               = string
    description        = optional(string)
    region             = optional(string)
    credential_provider_configuration = optional(list(object({
      api_key = optional(list(object({
        credential_location       = optional(string)
        credential_parameter_name = optional(string)
        credential_prefix         = optional(string)
        provider_arn              = string
      })))
      caller_iam_credentials = optional(list(object({
        region  = optional(string)
        service = string
      })))
      gateway_iam_role = optional(list(object({
        region  = optional(string)
        service = optional(string)
      })))
      jwt_passthrough = optional(list(object({
      })))
      oauth = optional(list(object({
        custom_parameters  = optional(map(string))
        default_return_url = optional(string)
        grant_type         = optional(string)
        provider_arn       = string
        scopes             = set(string)
      })))
    })))
    metadata_configuration = optional(list(object({
      allowed_query_parameters = optional(set(string))
      allowed_request_headers  = optional(set(string))
      allowed_response_headers = optional(set(string))
    })))
    private_endpoint = optional(list(object({
      managed_vpc_resource = optional(list(object({
        endpoint_ip_address_type = string
        routing_domain           = optional(string)
        security_group_ids       = optional(set(string))
        subnet_ids               = set(string)
        tags                     = optional(map(string))
        vpc_identifier           = string
      })))
      self_managed_lattice_resource = optional(list(object({
        resource_configuration_identifier = string
      })))
    })))
    target_configuration = optional(list(object({
      http = optional(list(object({
        agentcore_runtime = optional(list(object({
          arn       = string
          qualifier = optional(string)
        })))
      })))
      mcp = optional(list(object({
        api_gateway = optional(list(object({
          api_gateway_tool_configuration = optional(list(object({
            tool_filter = optional(list(object({
              filter_path = string
              methods     = set(string)
            })))
            tool_override = optional(list(object({
              description = optional(string)
              method      = string
              name        = string
              path        = string
            })))
          })))
          rest_api_id = string
          stage       = string
        })))
        lambda = optional(list(object({
          lambda_arn = string
          tool_schema = optional(list(object({
            inline_payload = optional(list(object({
              description = string
              input_schema = optional(list(object({
                description = optional(string)
                items = optional(list(object({
                  description = optional(string)
                  items = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    properties_json = optional(string)
                    type            = string
                  })))
                  property = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    name            = string
                    properties_json = optional(string)
                    required        = optional(bool)
                    type            = string
                  })))
                  type = string
                })))
                property = optional(list(object({
                  description = optional(string)
                  items = optional(list(object({
                    description = optional(string)
                    items = optional(list(object({
                      description     = optional(string)
                      items_json      = optional(string)
                      properties_json = optional(string)
                      type            = string
                    })))
                    property = optional(list(object({
                      description     = optional(string)
                      items_json      = optional(string)
                      name            = string
                      properties_json = optional(string)
                      required        = optional(bool)
                      type            = string
                    })))
                    type = string
                  })))
                  name = string
                  property = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    name            = string
                    properties_json = optional(string)
                    required        = optional(bool)
                    type            = string
                  })))
                  required = optional(bool)
                  type     = string
                })))
                type = string
              })))
              name = string
              output_schema = optional(list(object({
                description = optional(string)
                items = optional(list(object({
                  description = optional(string)
                  items = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    properties_json = optional(string)
                    type            = string
                  })))
                  property = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    name            = string
                    properties_json = optional(string)
                    required        = optional(bool)
                    type            = string
                  })))
                  type = string
                })))
                property = optional(list(object({
                  description = optional(string)
                  items = optional(list(object({
                    description = optional(string)
                    items = optional(list(object({
                      description     = optional(string)
                      items_json      = optional(string)
                      properties_json = optional(string)
                      type            = string
                    })))
                    property = optional(list(object({
                      description     = optional(string)
                      items_json      = optional(string)
                      name            = string
                      properties_json = optional(string)
                      required        = optional(bool)
                      type            = string
                    })))
                    type = string
                  })))
                  name = string
                  property = optional(list(object({
                    description     = optional(string)
                    items_json      = optional(string)
                    name            = string
                    properties_json = optional(string)
                    required        = optional(bool)
                    type            = string
                  })))
                  required = optional(bool)
                  type     = string
                })))
                type = string
              })))
            })))
            s3 = optional(list(object({
              bucket_owner_account_id = optional(string)
              uri                     = optional(string)
            })))
          })))
        })))
        mcp_server = optional(list(object({
          endpoint     = string
          listing_mode = optional(string)
        })))
        open_api_schema = optional(list(object({
          inline_payload = optional(list(object({
            payload = string
          })))
          s3 = optional(list(object({
            bucket_owner_account_id = optional(string)
            uri                     = optional(string)
          })))
        })))
        smithy_model = optional(list(object({
          inline_payload = optional(list(object({
            payload = string
          })))
          s3 = optional(list(object({
            bucket_owner_account_id = optional(string)
            uri                     = optional(string)
          })))
        })))
      })))
    })))
  }))
}


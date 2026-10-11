resource "datadog_synthetics_test" "synthetics_tests" {
  for_each = var.synthetics_tests

  locations                            = each.value.locations
  name                                 = each.value.name
  status                               = each.value.status
  type                                 = each.value.type
  config_initial_application_arguments = each.value.config_initial_application_arguments
  device_ids                           = each.value.device_ids
  force_delete_dependencies            = each.value.force_delete_dependencies
  message                              = each.value.message
  request_headers                      = each.value.request_headers
  request_metadata                     = each.value.request_metadata
  request_query                        = each.value.request_query
  set_cookie                           = each.value.set_cookie
  subtype                              = each.value.subtype
  tags                                 = each.value.tags
  variables_from_script                = each.value.variables_from_script

  dynamic "api_step" {
    for_each = each.value.api_step != null ? each.value.api_step : []
    content {
      allow_failure = api_step.value.allow_failure
      dynamic "assertion" {
        for_each = api_step.value.assertion != null ? api_step.value.assertion : []
        content {
          code     = assertion.value.code
          operator = assertion.value.operator
          property = assertion.value.property
          target   = assertion.value.target
          dynamic "target_mcp_capabilities" {
            for_each = assertion.value.target_mcp_capabilities != null ? [assertion.value.target_mcp_capabilities] : []
            content {
              capabilities = target_mcp_capabilities.value.capabilities
            }
          }
          dynamic "targetjsonpath" {
            for_each = assertion.value.targetjsonpath != null ? [assertion.value.targetjsonpath] : []
            content {
              elementsoperator = targetjsonpath.value.elementsoperator
              jsonpath         = targetjsonpath.value.jsonpath
              operator         = targetjsonpath.value.operator
              targetvalue      = targetjsonpath.value.targetvalue
            }
          }
          dynamic "targetjsonschema" {
            for_each = assertion.value.targetjsonschema != null ? [assertion.value.targetjsonschema] : []
            content {
              jsonschema = targetjsonschema.value.jsonschema
              metaschema = targetjsonschema.value.metaschema
            }
          }
          dynamic "targetxpath" {
            for_each = assertion.value.targetxpath != null ? [assertion.value.targetxpath] : []
            content {
              operator    = targetxpath.value.operator
              targetvalue = targetxpath.value.targetvalue
              xpath       = targetxpath.value.xpath
            }
          }
          timings_scope = assertion.value.timings_scope
          type          = assertion.value.type
        }
      }
      exit_if_succeed = api_step.value.exit_if_succeed
      dynamic "extracted_value" {
        for_each = api_step.value.extracted_value != null ? api_step.value.extracted_value : []
        content {
          field = extracted_value.value.field
          name  = extracted_value.value.name
          parser {
            type  = extracted_value.value.parser.type
            value = extracted_value.value.parser.value
          }
          secure = extracted_value.value.secure
          type   = extracted_value.value.type
        }
      }
      extracted_values_from_script = api_step.value.extracted_values_from_script
      is_critical                  = api_step.value.is_critical
      name                         = api_step.value.name
      dynamic "request_basicauth" {
        for_each = api_step.value.request_basicauth != null ? [api_step.value.request_basicauth] : []
        content {
          access_key               = request_basicauth.value.access_key
          access_token_url         = request_basicauth.value.access_token_url
          add_claims_exp           = request_basicauth.value.add_claims_exp
          add_claims_iat           = request_basicauth.value.add_claims_iat
          algorithm                = request_basicauth.value.algorithm
          audience                 = request_basicauth.value.audience
          client_id                = request_basicauth.value.client_id
          client_secret            = request_basicauth.value.client_secret
          domain                   = request_basicauth.value.domain
          expires_in               = request_basicauth.value.expires_in
          header                   = request_basicauth.value.header
          password                 = request_basicauth.value.password
          payload                  = request_basicauth.value.payload
          region                   = request_basicauth.value.region
          resource                 = request_basicauth.value.resource
          scope                    = request_basicauth.value.scope
          secret                   = request_basicauth.value.secret
          secret_key               = request_basicauth.value.secret_key
          service_name             = request_basicauth.value.service_name
          session_token            = request_basicauth.value.session_token
          token_api_authentication = request_basicauth.value.token_api_authentication
          token_prefix             = request_basicauth.value.token_prefix
          type                     = request_basicauth.value.type
          username                 = request_basicauth.value.username
          workstation              = request_basicauth.value.workstation
        }
      }
      dynamic "request_client_certificate" {
        for_each = api_step.value.request_client_certificate != null ? [api_step.value.request_client_certificate] : []
        content {
          cert {
            content  = request_client_certificate.value.cert.content
            filename = request_client_certificate.value.cert.filename
          }
          key {
            content  = request_client_certificate.value.key.content
            filename = request_client_certificate.value.key.filename
          }
        }
      }
      dynamic "request_definition" {
        for_each = api_step.value.request_definition != null ? [api_step.value.request_definition] : []
        content {
          accept_self_signed                = request_definition.value.accept_self_signed
          allow_insecure                    = request_definition.value.allow_insecure
          body                              = request_definition.value.body
          body_type                         = request_definition.value.body_type
          call_type                         = request_definition.value.call_type
          certificate_domains               = request_definition.value.certificate_domains
          check_certificate_revocation      = request_definition.value.check_certificate_revocation
          destination_service               = request_definition.value.destination_service
          disable_aia_intermediate_fetching = request_definition.value.disable_aia_intermediate_fetching
          dns_server                        = request_definition.value.dns_server
          dns_server_port                   = request_definition.value.dns_server_port
          e2e_queries                       = request_definition.value.e2e_queries
          follow_redirects                  = request_definition.value.follow_redirects
          form                              = request_definition.value.form
          host                              = request_definition.value.host
          http_version                      = request_definition.value.http_version
          is_message_base64_encoded         = request_definition.value.is_message_base64_encoded
          max_ttl                           = request_definition.value.max_ttl
          mcp_protocol_version              = request_definition.value.mcp_protocol_version
          message                           = request_definition.value.message
          method                            = request_definition.value.method
          no_saving_response_body           = request_definition.value.no_saving_response_body
          number_of_packets                 = request_definition.value.number_of_packets
          persist_cookies                   = request_definition.value.persist_cookies
          plain_proto_file                  = request_definition.value.plain_proto_file
          port                              = request_definition.value.port
          proto_json_descriptor             = request_definition.value.proto_json_descriptor
          servername                        = request_definition.value.servername
          service                           = request_definition.value.service
          should_track_hops                 = request_definition.value.should_track_hops
          source_service                    = request_definition.value.source_service
          tcp_method                        = request_definition.value.tcp_method
          timeout                           = request_definition.value.timeout
          tool_args                         = request_definition.value.tool_args
          tool_name                         = request_definition.value.tool_name
          traceroute_queries                = request_definition.value.traceroute_queries
          url                               = request_definition.value.url
        }
      }
      dynamic "request_file" {
        for_each = api_step.value.request_file != null ? api_step.value.request_file : []
        content {
          content            = request_file.value.content
          encoding           = request_file.value.encoding
          name               = request_file.value.name
          original_file_name = request_file.value.original_file_name
          size               = request_file.value.size
          type               = request_file.value.type
        }
      }
      request_headers  = api_step.value.request_headers
      request_metadata = api_step.value.request_metadata
      dynamic "request_proxy" {
        for_each = api_step.value.request_proxy != null ? [api_step.value.request_proxy] : []
        content {
          headers = request_proxy.value.headers
          url     = request_proxy.value.url
        }
      }
      request_query = api_step.value.request_query
      dynamic "retry" {
        for_each = api_step.value.retry != null ? [api_step.value.retry] : []
        content {
          count    = retry.value.count
          interval = retry.value.interval
        }
      }
      subtest_public_id = api_step.value.subtest_public_id
      subtype           = api_step.value.subtype
      value             = api_step.value.value
    }
  }

  dynamic "assertion" {
    for_each = each.value.assertion != null ? each.value.assertion : []
    content {
      code     = assertion.value.code
      operator = assertion.value.operator
      property = assertion.value.property
      target   = assertion.value.target
      dynamic "target_mcp_capabilities" {
        for_each = assertion.value.target_mcp_capabilities != null ? [assertion.value.target_mcp_capabilities] : []
        content {
          capabilities = target_mcp_capabilities.value.capabilities
        }
      }
      dynamic "targetjsonpath" {
        for_each = assertion.value.targetjsonpath != null ? [assertion.value.targetjsonpath] : []
        content {
          elementsoperator = targetjsonpath.value.elementsoperator
          jsonpath         = targetjsonpath.value.jsonpath
          operator         = targetjsonpath.value.operator
          targetvalue      = targetjsonpath.value.targetvalue
        }
      }
      dynamic "targetjsonschema" {
        for_each = assertion.value.targetjsonschema != null ? [assertion.value.targetjsonschema] : []
        content {
          jsonschema = targetjsonschema.value.jsonschema
          metaschema = targetjsonschema.value.metaschema
        }
      }
      dynamic "targetxpath" {
        for_each = assertion.value.targetxpath != null ? [assertion.value.targetxpath] : []
        content {
          operator    = targetxpath.value.operator
          targetvalue = targetxpath.value.targetvalue
          xpath       = targetxpath.value.xpath
        }
      }
      timings_scope = assertion.value.timings_scope
      type          = assertion.value.type
    }
  }

  dynamic "browser_step" {
    for_each = each.value.browser_step != null ? each.value.browser_step : []
    content {
      allow_failure        = browser_step.value.allow_failure
      always_execute       = browser_step.value.always_execute
      exit_if_succeed      = browser_step.value.exit_if_succeed
      force_element_update = browser_step.value.force_element_update
      is_critical          = browser_step.value.is_critical
      local_key            = browser_step.value.local_key
      name                 = browser_step.value.name
      no_screenshot        = browser_step.value.no_screenshot
      params {
        append_to_content     = browser_step.value.params.append_to_content
        attribute             = browser_step.value.params.attribute
        check                 = browser_step.value.params.check
        click_type            = browser_step.value.params.click_type
        click_with_javascript = browser_step.value.params.click_with_javascript
        code                  = browser_step.value.params.code
        delay                 = browser_step.value.params.delay
        dynamic "drag_drop_options" {
          for_each = browser_step.value.params.drag_drop_options != null ? [browser_step.value.params.drag_drop_options] : []
          content {
            delay = drag_drop_options.value.delay
            dynamic "offset" {
              for_each = drag_drop_options.value.offset != null ? [drag_drop_options.value.offset] : []
              content {
                x = offset.value.x
                y = offset.value.y
              }
            }
          }
        }
        element = browser_step.value.params.element
        dynamic "element_user_locator" {
          for_each = browser_step.value.params.element_user_locator != null ? [browser_step.value.params.element_user_locator] : []
          content {
            fail_test_on_cannot_locate = element_user_locator.value.fail_test_on_cannot_locate
            value {
              type  = element_user_locator.value.value.type
              value = element_user_locator.value.value.value
            }
          }
        }
        email     = browser_step.value.params.email
        file      = browser_step.value.params.file
        files     = browser_step.value.params.files
        modifiers = browser_step.value.params.modifiers
        dynamic "pattern" {
          for_each = browser_step.value.params.pattern != null ? [browser_step.value.params.pattern] : []
          content {
            type  = pattern.value.type
            value = pattern.value.value
          }
        }
        playing_tab_id    = browser_step.value.params.playing_tab_id
        request           = browser_step.value.params.request
        requests          = browser_step.value.params.requests
        subtest_public_id = browser_step.value.params.subtest_public_id
        value             = browser_step.value.params.value
        dynamic "variable" {
          for_each = browser_step.value.params.variable != null ? [browser_step.value.params.variable] : []
          content {
            example = variable.value.example
            name    = variable.value.name
            secure  = variable.value.secure
          }
        }
        with_click = browser_step.value.params.with_click
        x          = browser_step.value.params.x
        y          = browser_step.value.params.y
      }
      timeout = browser_step.value.timeout
      type    = browser_step.value.type
    }
  }

  dynamic "browser_variable" {
    for_each = each.value.browser_variable != null ? each.value.browser_variable : []
    content {
      example = browser_variable.value.example
      id      = browser_variable.value.id
      name    = browser_variable.value.name
      pattern = browser_variable.value.pattern
      secure  = browser_variable.value.secure
      type    = browser_variable.value.type
    }
  }

  dynamic "config_variable" {
    for_each = each.value.config_variable != null ? each.value.config_variable : []
    content {
      example = config_variable.value.example
      id      = config_variable.value.id
      name    = config_variable.value.name
      pattern = config_variable.value.pattern
      secure  = config_variable.value.secure
      type    = config_variable.value.type
    }
  }

  dynamic "mobile_options_list" {
    for_each = each.value.mobile_options_list != null ? [each.value.mobile_options_list] : []
    content {
      allow_application_crash = mobile_options_list.value.allow_application_crash
      dynamic "bindings" {
        for_each = mobile_options_list.value.bindings != null ? mobile_options_list.value.bindings : []
        content {
          principals = bindings.value.principals
          relation   = bindings.value.relation
        }
      }
      dynamic "ci" {
        for_each = mobile_options_list.value.ci != null ? [mobile_options_list.value.ci] : []
        content {
          execution_rule = ci.value.execution_rule
        }
      }
      default_step_timeout      = mobile_options_list.value.default_step_timeout
      device_ids                = mobile_options_list.value.device_ids
      disable_auto_accept_alert = mobile_options_list.value.disable_auto_accept_alert
      min_failure_duration      = mobile_options_list.value.min_failure_duration
      mobile_application {
        application_id = mobile_options_list.value.mobile_application.application_id
        reference_id   = mobile_options_list.value.mobile_application.reference_id
        reference_type = mobile_options_list.value.mobile_application.reference_type
      }
      monitor_name = mobile_options_list.value.monitor_name
      dynamic "monitor_options" {
        for_each = mobile_options_list.value.monitor_options != null ? [mobile_options_list.value.monitor_options] : []
        content {
          escalation_message       = monitor_options.value.escalation_message
          notification_preset_name = monitor_options.value.notification_preset_name
          renotify_interval        = monitor_options.value.renotify_interval
          renotify_occurrences     = monitor_options.value.renotify_occurrences
        }
      }
      monitor_priority = mobile_options_list.value.monitor_priority
      no_screenshot    = mobile_options_list.value.no_screenshot
      restricted_roles = mobile_options_list.value.restricted_roles
      dynamic "retry" {
        for_each = mobile_options_list.value.retry != null ? [mobile_options_list.value.retry] : []
        content {
          count    = retry.value.count
          interval = retry.value.interval
        }
      }
      dynamic "scheduling" {
        for_each = mobile_options_list.value.scheduling != null ? [mobile_options_list.value.scheduling] : []
        content {
          dynamic "timeframes" {
            for_each = scheduling.value.timeframes
            content {
              day  = timeframes.value.day
              from = timeframes.value.from
              to   = timeframes.value.to
            }
          }
          timezone = scheduling.value.timezone
        }
      }
      tick_every = mobile_options_list.value.tick_every
      verbosity  = mobile_options_list.value.verbosity
    }
  }

  dynamic "mobile_step" {
    for_each = each.value.mobile_step != null ? each.value.mobile_step : []
    content {
      allow_failure        = mobile_step.value.allow_failure
      has_new_step_element = mobile_step.value.has_new_step_element
      is_critical          = mobile_step.value.is_critical
      name                 = mobile_step.value.name
      no_screenshot        = mobile_step.value.no_screenshot
      params {
        check     = mobile_step.value.params.check
        delay     = mobile_step.value.params.delay
        direction = mobile_step.value.params.direction
        dynamic "element" {
          for_each = mobile_step.value.params.element != null ? [mobile_step.value.params.element] : []
          content {
            context             = element.value.context
            context_type        = element.value.context_type
            element_description = element.value.element_description
            multi_locator       = element.value.multi_locator
            dynamic "relative_position" {
              for_each = element.value.relative_position != null ? [element.value.relative_position] : []
              content {
                x = relative_position.value.x
                y = relative_position.value.y
              }
            }
            text_content = element.value.text_content
            dynamic "user_locator" {
              for_each = element.value.user_locator != null ? [element.value.user_locator] : []
              content {
                fail_test_on_cannot_locate = user_locator.value.fail_test_on_cannot_locate
                dynamic "values" {
                  for_each = user_locator.value.values != null ? user_locator.value.values : []
                  content {
                    type  = values.value.type
                    value = values.value.value
                  }
                }
              }
            }
            view_name = element.value.view_name
          }
        }
        enable      = mobile_step.value.params.enable
        max_scrolls = mobile_step.value.params.max_scrolls
        dynamic "positions" {
          for_each = mobile_step.value.params.positions != null ? mobile_step.value.params.positions : []
          content {
            x = positions.value.x
            y = positions.value.y
          }
        }
        subtest_public_id = mobile_step.value.params.subtest_public_id
        value             = mobile_step.value.params.value
        dynamic "variable" {
          for_each = mobile_step.value.params.variable != null ? [mobile_step.value.params.variable] : []
          content {
            example = variable.value.example
            name    = variable.value.name
          }
        }
        with_enter = mobile_step.value.params.with_enter
        x          = mobile_step.value.params.x
        y          = mobile_step.value.params.y
      }
      public_id = mobile_step.value.public_id
      timeout   = mobile_step.value.timeout
      type      = mobile_step.value.type
    }
  }

  dynamic "options_list" {
    for_each = each.value.options_list != null ? [each.value.options_list] : []
    content {
      accept_self_signed           = options_list.value.accept_self_signed
      allow_insecure               = options_list.value.allow_insecure
      blocked_request_patterns     = options_list.value.blocked_request_patterns
      capture_network_payloads     = options_list.value.capture_network_payloads
      check_certificate_revocation = options_list.value.check_certificate_revocation
      dynamic "ci" {
        for_each = options_list.value.ci != null ? [options_list.value.ci] : []
        content {
          execution_rule = ci.value.execution_rule
        }
      }
      disable_aia_intermediate_fetching = options_list.value.disable_aia_intermediate_fetching
      disable_cors                      = options_list.value.disable_cors
      disable_csp                       = options_list.value.disable_csp
      follow_redirects                  = options_list.value.follow_redirects
      http_version                      = options_list.value.http_version
      ignore_certificate_validation     = options_list.value.ignore_certificate_validation
      ignore_server_certificate_error   = options_list.value.ignore_server_certificate_error
      initial_navigation_timeout        = options_list.value.initial_navigation_timeout
      min_failure_duration              = options_list.value.min_failure_duration
      min_location_failed               = options_list.value.min_location_failed
      monitor_name                      = options_list.value.monitor_name
      dynamic "monitor_options" {
        for_each = options_list.value.monitor_options != null ? [options_list.value.monitor_options] : []
        content {
          escalation_message       = monitor_options.value.escalation_message
          notification_preset_name = monitor_options.value.notification_preset_name
          renotify_interval        = monitor_options.value.renotify_interval
          renotify_occurrences     = monitor_options.value.renotify_occurrences
        }
      }
      monitor_priority = options_list.value.monitor_priority
      no_screenshot    = options_list.value.no_screenshot
      restricted_roles = options_list.value.restricted_roles
      dynamic "retry" {
        for_each = options_list.value.retry != null ? [options_list.value.retry] : []
        content {
          count    = retry.value.count
          interval = retry.value.interval
        }
      }
      dynamic "rum_settings" {
        for_each = options_list.value.rum_settings != null ? [options_list.value.rum_settings] : []
        content {
          application_id  = rum_settings.value.application_id
          client_token_id = rum_settings.value.client_token_id
          is_enabled      = rum_settings.value.is_enabled
        }
      }
      dynamic "scheduling" {
        for_each = options_list.value.scheduling != null ? [options_list.value.scheduling] : []
        content {
          dynamic "timeframes" {
            for_each = scheduling.value.timeframes
            content {
              day  = timeframes.value.day
              from = timeframes.value.from
              to   = timeframes.value.to
            }
          }
          timezone = scheduling.value.timezone
        }
      }
      tick_every = options_list.value.tick_every
    }
  }

  dynamic "request_basicauth" {
    for_each = each.value.request_basicauth != null ? [each.value.request_basicauth] : []
    content {
      access_key               = request_basicauth.value.access_key
      access_token_url         = request_basicauth.value.access_token_url
      add_claims_exp           = request_basicauth.value.add_claims_exp
      add_claims_iat           = request_basicauth.value.add_claims_iat
      algorithm                = request_basicauth.value.algorithm
      audience                 = request_basicauth.value.audience
      client_id                = request_basicauth.value.client_id
      client_secret            = request_basicauth.value.client_secret
      domain                   = request_basicauth.value.domain
      expires_in               = request_basicauth.value.expires_in
      header                   = request_basicauth.value.header
      password                 = request_basicauth.value.password
      payload                  = request_basicauth.value.payload
      region                   = request_basicauth.value.region
      resource                 = request_basicauth.value.resource
      scope                    = request_basicauth.value.scope
      secret                   = request_basicauth.value.secret
      secret_key               = request_basicauth.value.secret_key
      service_name             = request_basicauth.value.service_name
      session_token            = request_basicauth.value.session_token
      token_api_authentication = request_basicauth.value.token_api_authentication
      token_prefix             = request_basicauth.value.token_prefix
      type                     = request_basicauth.value.type
      username                 = request_basicauth.value.username
      workstation              = request_basicauth.value.workstation
    }
  }

  dynamic "request_client_certificate" {
    for_each = each.value.request_client_certificate != null ? [each.value.request_client_certificate] : []
    content {
      cert {
        content  = request_client_certificate.value.cert.content
        filename = request_client_certificate.value.cert.filename
      }
      key {
        content  = request_client_certificate.value.key.content
        filename = request_client_certificate.value.key.filename
      }
    }
  }

  dynamic "request_definition" {
    for_each = each.value.request_definition != null ? [each.value.request_definition] : []
    content {
      body                      = request_definition.value.body
      body_type                 = request_definition.value.body_type
      call_type                 = request_definition.value.call_type
      certificate_domains       = request_definition.value.certificate_domains
      destination_service       = request_definition.value.destination_service
      dns_server                = request_definition.value.dns_server
      dns_server_port           = request_definition.value.dns_server_port
      e2e_queries               = request_definition.value.e2e_queries
      form                      = request_definition.value.form
      host                      = request_definition.value.host
      http_version              = request_definition.value.http_version
      is_message_base64_encoded = request_definition.value.is_message_base64_encoded
      max_ttl                   = request_definition.value.max_ttl
      mcp_protocol_version      = request_definition.value.mcp_protocol_version
      message                   = request_definition.value.message
      method                    = request_definition.value.method
      no_saving_response_body   = request_definition.value.no_saving_response_body
      number_of_packets         = request_definition.value.number_of_packets
      persist_cookies           = request_definition.value.persist_cookies
      plain_proto_file          = request_definition.value.plain_proto_file
      port                      = request_definition.value.port
      proto_json_descriptor     = request_definition.value.proto_json_descriptor
      servername                = request_definition.value.servername
      service                   = request_definition.value.service
      should_track_hops         = request_definition.value.should_track_hops
      source_service            = request_definition.value.source_service
      tcp_method                = request_definition.value.tcp_method
      timeout                   = request_definition.value.timeout
      tool_args                 = request_definition.value.tool_args
      tool_name                 = request_definition.value.tool_name
      traceroute_queries        = request_definition.value.traceroute_queries
      url                       = request_definition.value.url
    }
  }

  dynamic "request_file" {
    for_each = each.value.request_file != null ? each.value.request_file : []
    content {
      content            = request_file.value.content
      encoding           = request_file.value.encoding
      name               = request_file.value.name
      original_file_name = request_file.value.original_file_name
      size               = request_file.value.size
      type               = request_file.value.type
    }
  }

  dynamic "request_proxy" {
    for_each = each.value.request_proxy != null ? [each.value.request_proxy] : []
    content {
      headers = request_proxy.value.headers
      url     = request_proxy.value.url
    }
  }
}


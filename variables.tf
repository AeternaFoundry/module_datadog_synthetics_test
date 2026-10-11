variable "synthetics_tests" {
  description = <<EOT
Map of synthetics_tests, attributes below
Required:
    - locations
    - name
    - status
    - type
Optional:
    - config_initial_application_arguments
    - device_ids
    - force_delete_dependencies
    - message
    - request_headers
    - request_metadata
    - request_query
    - set_cookie
    - subtype
    - tags
    - variables_from_script
    - api_step (block):
        - allow_failure (optional)
        - assertion (optional, block):
            - code (optional)
            - operator (optional)
            - property (optional)
            - target (optional)
            - target_mcp_capabilities (optional, block):
                - capabilities (required)
            - targetjsonpath (optional, block):
                - elementsoperator (optional)
                - jsonpath (required)
                - operator (required)
                - targetvalue (optional)
            - targetjsonschema (optional, block):
                - jsonschema (required)
                - metaschema (optional)
            - targetxpath (optional, block):
                - operator (required)
                - targetvalue (optional)
                - xpath (required)
            - timings_scope (optional)
            - type (required)
        - exit_if_succeed (optional)
        - extracted_value (optional, block):
            - field (optional)
            - name (required)
            - parser (required, block):
                - type (required)
                - value (optional)
            - secure (optional)
            - type (required)
        - extracted_values_from_script (optional)
        - is_critical (optional)
        - name (required)
        - request_basicauth (optional, block):
            - access_key (optional)
            - access_token_url (optional)
            - add_claims_exp (optional)
            - add_claims_iat (optional)
            - algorithm (optional)
            - audience (optional)
            - client_id (optional)
            - client_secret (optional)
            - domain (optional)
            - expires_in (optional)
            - header (optional)
            - password (optional)
            - payload (optional)
            - region (optional)
            - resource (optional)
            - scope (optional)
            - secret (optional)
            - secret_key (optional)
            - service_name (optional)
            - session_token (optional)
            - token_api_authentication (optional)
            - token_prefix (optional)
            - type (optional)
            - username (optional)
            - workstation (optional)
        - request_client_certificate (optional, block):
            - cert (required, block):
                - content (optional)
                - filename (optional)
            - key (required, block):
                - content (optional)
                - filename (optional)
        - request_definition (optional, block):
            - accept_self_signed (optional)
            - allow_insecure (optional)
            - body (optional)
            - body_type (optional)
            - call_type (optional)
            - certificate_domains (optional)
            - check_certificate_revocation (optional)
            - destination_service (optional)
            - disable_aia_intermediate_fetching (optional)
            - dns_server (optional)
            - dns_server_port (optional)
            - e2e_queries (optional)
            - follow_redirects (optional)
            - form (optional)
            - host (optional)
            - http_version (optional)
            - is_message_base64_encoded (optional)
            - max_ttl (optional)
            - mcp_protocol_version (optional)
            - message (optional)
            - method (optional)
            - no_saving_response_body (optional)
            - number_of_packets (optional)
            - persist_cookies (optional)
            - plain_proto_file (optional)
            - port (optional)
            - proto_json_descriptor (optional)
            - servername (optional)
            - service (optional)
            - should_track_hops (optional)
            - source_service (optional)
            - tcp_method (optional)
            - timeout (optional)
            - tool_args (optional)
            - tool_name (optional)
            - traceroute_queries (optional)
            - url (optional)
        - request_file (optional, block):
            - content (optional)
            - encoding (optional)
            - name (required)
            - original_file_name (optional)
            - size (required)
            - type (required)
        - request_headers (optional)
        - request_metadata (optional)
        - request_proxy (optional, block):
            - headers (optional)
            - url (required)
        - request_query (optional)
        - retry (optional, block):
            - count (optional)
            - interval (optional)
        - subtest_public_id (optional)
        - subtype (optional)
        - value (optional)
    - assertion (block):
        - code (optional)
        - operator (optional)
        - property (optional)
        - target (optional)
        - target_mcp_capabilities (optional, block):
            - capabilities (required)
        - targetjsonpath (optional, block):
            - elementsoperator (optional)
            - jsonpath (required)
            - operator (required)
            - targetvalue (optional)
        - targetjsonschema (optional, block):
            - jsonschema (required)
            - metaschema (optional)
        - targetxpath (optional, block):
            - operator (required)
            - targetvalue (optional)
            - xpath (required)
        - timings_scope (optional)
        - type (required)
    - browser_step (block):
        - allow_failure (optional)
        - always_execute (optional)
        - exit_if_succeed (optional)
        - force_element_update (optional)
        - is_critical (optional)
        - local_key (optional)
        - name (required)
        - no_screenshot (optional)
        - params (required, block):
            - append_to_content (optional)
            - attribute (optional)
            - check (optional)
            - click_type (optional)
            - click_with_javascript (optional)
            - code (optional)
            - delay (optional)
            - drag_drop_options (optional, block):
                - delay (optional)
                - offset (optional, block):
                    - x (optional)
                    - y (optional)
            - element (optional)
            - element_user_locator (optional, block):
                - fail_test_on_cannot_locate (optional)
                - value (required, block):
                    - type (optional)
                    - value (required)
            - email (optional)
            - file (optional)
            - files (optional)
            - modifiers (optional)
            - pattern (optional, block):
                - type (optional)
                - value (optional)
            - playing_tab_id (optional)
            - request (optional)
            - requests (optional)
            - subtest_public_id (optional)
            - value (optional)
            - variable (optional, block):
                - example (optional)
                - name (optional)
                - secure (optional)
            - with_click (optional)
            - x (optional)
            - y (optional)
        - timeout (optional)
        - type (required)
    - browser_variable (block):
        - example (optional)
        - id (optional)
        - name (required)
        - pattern (optional)
        - secure (optional)
        - type (required)
    - config_variable (block):
        - example (optional)
        - id (optional)
        - name (required)
        - pattern (optional)
        - secure (optional)
        - type (required)
    - mobile_options_list (block):
        - allow_application_crash (optional)
        - bindings (optional, block):
            - principals (optional)
            - relation (optional)
        - ci (optional, block):
            - execution_rule (required)
        - default_step_timeout (optional)
        - device_ids (required)
        - disable_auto_accept_alert (optional)
        - min_failure_duration (optional)
        - mobile_application (required, block):
            - application_id (required)
            - reference_id (required)
            - reference_type (required)
        - monitor_name (optional)
        - monitor_options (optional, block):
            - escalation_message (optional)
            - notification_preset_name (optional)
            - renotify_interval (optional)
            - renotify_occurrences (optional)
        - monitor_priority (optional)
        - no_screenshot (optional)
        - restricted_roles (optional)
        - retry (optional, block):
            - count (optional)
            - interval (optional)
        - scheduling (optional, block):
            - timeframes (required, block):
                - day (required)
                - from (required)
                - to (required)
            - timezone (required)
        - tick_every (required)
        - verbosity (optional)
    - mobile_step (block):
        - allow_failure (optional)
        - has_new_step_element (optional)
        - is_critical (optional)
        - name (required)
        - no_screenshot (optional)
        - params (required, block):
            - check (optional)
            - delay (optional)
            - direction (optional)
            - element (optional, block):
                - context (optional)
                - context_type (optional)
                - element_description (optional)
                - multi_locator (optional)
                - relative_position (optional, block):
                    - x (optional)
                    - y (optional)
                - text_content (optional)
                - user_locator (optional, block):
                    - fail_test_on_cannot_locate (optional)
                    - values (optional, block):
                        - type (optional)
                        - value (optional)
                - view_name (optional)
            - enable (optional)
            - max_scrolls (optional)
            - positions (optional, block):
                - x (optional)
                - y (optional)
            - subtest_public_id (optional)
            - value (optional)
            - variable (optional, block):
                - example (optional)
                - name (required)
            - with_enter (optional)
            - x (optional)
            - y (optional)
        - public_id (optional)
        - timeout (optional)
        - type (required)
    - options_list (block):
        - accept_self_signed (optional)
        - allow_insecure (optional)
        - blocked_request_patterns (optional)
        - capture_network_payloads (optional)
        - check_certificate_revocation (optional)
        - ci (optional, block):
            - execution_rule (optional)
        - disable_aia_intermediate_fetching (optional)
        - disable_cors (optional)
        - disable_csp (optional)
        - follow_redirects (optional)
        - http_version (optional)
        - ignore_certificate_validation (optional)
        - ignore_server_certificate_error (optional)
        - initial_navigation_timeout (optional)
        - min_failure_duration (optional)
        - min_location_failed (optional)
        - monitor_name (optional)
        - monitor_options (optional, block):
            - escalation_message (optional)
            - notification_preset_name (optional)
            - renotify_interval (optional)
            - renotify_occurrences (optional)
        - monitor_priority (optional)
        - no_screenshot (optional)
        - restricted_roles (optional)
        - retry (optional, block):
            - count (optional)
            - interval (optional)
        - rum_settings (optional, block):
            - application_id (optional)
            - client_token_id (optional)
            - is_enabled (required)
        - scheduling (optional, block):
            - timeframes (required, block):
                - day (required)
                - from (required)
                - to (required)
            - timezone (required)
        - tick_every (required)
    - request_basicauth (block):
        - access_key (optional)
        - access_token_url (optional)
        - add_claims_exp (optional)
        - add_claims_iat (optional)
        - algorithm (optional)
        - audience (optional)
        - client_id (optional)
        - client_secret (optional)
        - domain (optional)
        - expires_in (optional)
        - header (optional)
        - password (optional)
        - payload (optional)
        - region (optional)
        - resource (optional)
        - scope (optional)
        - secret (optional)
        - secret_key (optional)
        - service_name (optional)
        - session_token (optional)
        - token_api_authentication (optional)
        - token_prefix (optional)
        - type (optional)
        - username (optional)
        - workstation (optional)
    - request_client_certificate (block):
        - cert (required, block):
            - content (optional)
            - filename (optional)
        - key (required, block):
            - content (optional)
            - filename (optional)
    - request_definition (block):
        - body (optional)
        - body_type (optional)
        - call_type (optional)
        - certificate_domains (optional)
        - destination_service (optional)
        - dns_server (optional)
        - dns_server_port (optional)
        - e2e_queries (optional)
        - form (optional)
        - host (optional)
        - http_version (optional)
        - is_message_base64_encoded (optional)
        - max_ttl (optional)
        - mcp_protocol_version (optional)
        - message (optional)
        - method (optional)
        - no_saving_response_body (optional)
        - number_of_packets (optional)
        - persist_cookies (optional)
        - plain_proto_file (optional)
        - port (optional)
        - proto_json_descriptor (optional)
        - servername (optional)
        - service (optional)
        - should_track_hops (optional)
        - source_service (optional)
        - tcp_method (optional)
        - timeout (optional)
        - tool_args (optional)
        - tool_name (optional)
        - traceroute_queries (optional)
        - url (optional)
    - request_file (block):
        - content (optional)
        - encoding (optional)
        - name (required)
        - original_file_name (optional)
        - size (required)
        - type (required)
    - request_proxy (block):
        - headers (optional)
        - url (required)
EOT

  type = map(object({
    locations                            = set(string)
    name                                 = string
    status                               = string
    type                                 = string
    config_initial_application_arguments = optional(map(string))
    device_ids                           = optional(list(string))
    force_delete_dependencies            = optional(bool)
    message                              = optional(string)
    request_headers                      = optional(map(string))
    request_metadata                     = optional(map(string))
    request_query                        = optional(map(string))
    set_cookie                           = optional(string)
    subtype                              = optional(string)
    tags                                 = optional(list(string))
    variables_from_script                = optional(string)
    api_step = optional(list(object({
      allow_failure = optional(bool)
      assertion = optional(list(object({
        code     = optional(string)
        operator = optional(string)
        property = optional(string)
        target   = optional(string)
        target_mcp_capabilities = optional(object({
          capabilities = list(string)
        }))
        targetjsonpath = optional(object({
          elementsoperator = optional(string)
          jsonpath         = string
          operator         = string
          targetvalue      = optional(string)
        }))
        targetjsonschema = optional(object({
          jsonschema = string
          metaschema = optional(string)
        }))
        targetxpath = optional(object({
          operator    = string
          targetvalue = optional(string)
          xpath       = string
        }))
        timings_scope = optional(string)
        type          = string
      })))
      exit_if_succeed = optional(bool)
      extracted_value = optional(list(object({
        field = optional(string)
        name  = string
        parser = object({
          type  = string
          value = optional(string)
        })
        secure = optional(bool)
        type   = string
      })))
      extracted_values_from_script = optional(string)
      is_critical                  = optional(bool)
      name                         = string
      request_basicauth = optional(object({
        access_key               = optional(string)
        access_token_url         = optional(string)
        add_claims_exp           = optional(bool)
        add_claims_iat           = optional(bool)
        algorithm                = optional(string)
        audience                 = optional(string)
        client_id                = optional(string)
        client_secret            = optional(string)
        domain                   = optional(string)
        expires_in               = optional(number)
        header                   = optional(string)
        password                 = optional(string)
        payload                  = optional(string)
        region                   = optional(string)
        resource                 = optional(string)
        scope                    = optional(string)
        secret                   = optional(string)
        secret_key               = optional(string)
        service_name             = optional(string)
        session_token            = optional(string)
        token_api_authentication = optional(string)
        token_prefix             = optional(string)
        type                     = optional(string)
        username                 = optional(string)
        workstation              = optional(string)
      }))
      request_client_certificate = optional(object({
        cert = object({
          content  = optional(string)
          filename = optional(string)
        })
        key = object({
          content  = optional(string)
          filename = optional(string)
        })
      }))
      request_definition = optional(object({
        accept_self_signed                = optional(bool)
        allow_insecure                    = optional(bool)
        body                              = optional(string)
        body_type                         = optional(string)
        call_type                         = optional(string)
        certificate_domains               = optional(list(string))
        check_certificate_revocation      = optional(bool)
        destination_service               = optional(string)
        disable_aia_intermediate_fetching = optional(bool)
        dns_server                        = optional(string)
        dns_server_port                   = optional(string)
        e2e_queries                       = optional(number)
        follow_redirects                  = optional(bool)
        form                              = optional(map(string))
        host                              = optional(string)
        http_version                      = optional(string)
        is_message_base64_encoded         = optional(bool)
        max_ttl                           = optional(number)
        mcp_protocol_version              = optional(string)
        message                           = optional(string)
        method                            = optional(string)
        no_saving_response_body           = optional(bool)
        number_of_packets                 = optional(number)
        persist_cookies                   = optional(bool)
        plain_proto_file                  = optional(string)
        port                              = optional(string)
        proto_json_descriptor             = optional(string)
        servername                        = optional(string)
        service                           = optional(string)
        should_track_hops                 = optional(bool)
        source_service                    = optional(string)
        tcp_method                        = optional(string)
        timeout                           = optional(number)
        tool_args                         = optional(string)
        tool_name                         = optional(string)
        traceroute_queries                = optional(number)
        url                               = optional(string)
      }))
      request_file = optional(list(object({
        content            = optional(string)
        encoding           = optional(string)
        name               = string
        original_file_name = optional(string)
        size               = number
        type               = string
      })))
      request_headers  = optional(map(string))
      request_metadata = optional(map(string))
      request_proxy = optional(object({
        headers = optional(map(string))
        url     = string
      }))
      request_query = optional(map(string))
      retry = optional(object({
        count    = optional(number)
        interval = optional(number)
      }))
      subtest_public_id = optional(string)
      subtype           = optional(string)
      value             = optional(number)
    })))
    assertion = optional(list(object({
      code     = optional(string)
      operator = optional(string)
      property = optional(string)
      target   = optional(string)
      target_mcp_capabilities = optional(object({
        capabilities = list(string)
      }))
      targetjsonpath = optional(object({
        elementsoperator = optional(string)
        jsonpath         = string
        operator         = string
        targetvalue      = optional(string)
      }))
      targetjsonschema = optional(object({
        jsonschema = string
        metaschema = optional(string)
      }))
      targetxpath = optional(object({
        operator    = string
        targetvalue = optional(string)
        xpath       = string
      }))
      timings_scope = optional(string)
      type          = string
    })))
    browser_step = optional(list(object({
      allow_failure        = optional(bool)
      always_execute       = optional(bool)
      exit_if_succeed      = optional(bool)
      force_element_update = optional(bool)
      is_critical          = optional(bool)
      local_key            = optional(string)
      name                 = string
      no_screenshot        = optional(bool)
      params = object({
        append_to_content     = optional(bool)
        attribute             = optional(string)
        check                 = optional(string)
        click_type            = optional(string)
        click_with_javascript = optional(bool)
        code                  = optional(string)
        delay                 = optional(number)
        drag_drop_options = optional(object({
          delay = optional(number)
          offset = optional(object({
            x = optional(number)
            y = optional(number)
          }))
        }))
        element = optional(string)
        element_user_locator = optional(object({
          fail_test_on_cannot_locate = optional(bool)
          value = object({
            type  = optional(string)
            value = string
          })
        }))
        email     = optional(string)
        file      = optional(string)
        files     = optional(string)
        modifiers = optional(list(string))
        pattern = optional(object({
          type  = optional(string)
          value = optional(string)
        }))
        playing_tab_id    = optional(string)
        request           = optional(string)
        requests          = optional(string)
        subtest_public_id = optional(string)
        value             = optional(string)
        variable = optional(object({
          example = optional(string)
          name    = optional(string)
          secure  = optional(bool)
        }))
        with_click = optional(bool)
        x          = optional(number)
        y          = optional(number)
      })
      timeout = optional(number)
      type    = string
    })))
    browser_variable = optional(list(object({
      example = optional(string)
      id      = optional(string)
      name    = string
      pattern = optional(string)
      secure  = optional(bool)
      type    = string
    })))
    config_variable = optional(list(object({
      example = optional(string)
      id      = optional(string)
      name    = string
      pattern = optional(string)
      secure  = optional(bool)
      type    = string
    })))
    mobile_options_list = optional(object({
      allow_application_crash = optional(bool)
      bindings = optional(list(object({
        principals = optional(list(string))
        relation   = optional(string)
      })))
      ci = optional(object({
        execution_rule = string
      }))
      default_step_timeout      = optional(number)
      device_ids                = list(string)
      disable_auto_accept_alert = optional(bool)
      min_failure_duration      = optional(number)
      mobile_application = object({
        application_id = string
        reference_id   = string
        reference_type = string
      })
      monitor_name = optional(string)
      monitor_options = optional(object({
        escalation_message       = optional(string)
        notification_preset_name = optional(string)
        renotify_interval        = optional(number)
        renotify_occurrences     = optional(number)
      }))
      monitor_priority = optional(number)
      no_screenshot    = optional(bool)
      restricted_roles = optional(set(string))
      retry = optional(object({
        count    = optional(number)
        interval = optional(number)
      }))
      scheduling = optional(object({
        timeframes = list(object({
          day  = number
          from = string
          to   = string
        }))
        timezone = string
      }))
      tick_every = number
      verbosity  = optional(number)
    }))
    mobile_step = optional(list(object({
      allow_failure        = optional(bool)
      has_new_step_element = optional(bool)
      is_critical          = optional(bool)
      name                 = string
      no_screenshot        = optional(bool)
      params = object({
        check     = optional(string)
        delay     = optional(number)
        direction = optional(string)
        element = optional(object({
          context             = optional(string)
          context_type        = optional(string)
          element_description = optional(string)
          multi_locator       = optional(map(string))
          relative_position = optional(object({
            x = optional(number)
            y = optional(number)
          }))
          text_content = optional(string)
          user_locator = optional(object({
            fail_test_on_cannot_locate = optional(bool)
            values = optional(list(object({
              type  = optional(string)
              value = optional(string)
            })))
          }))
          view_name = optional(string)
        }))
        enable      = optional(bool)
        max_scrolls = optional(number)
        positions = optional(list(object({
          x = optional(number)
          y = optional(number)
        })))
        subtest_public_id = optional(string)
        value             = optional(string)
        variable = optional(object({
          example = optional(string)
          name    = string
        }))
        with_enter = optional(bool)
        x          = optional(number)
        y          = optional(number)
      })
      public_id = optional(string)
      timeout   = optional(number)
      type      = string
    })))
    options_list = optional(object({
      accept_self_signed           = optional(bool)
      allow_insecure               = optional(bool)
      blocked_request_patterns     = optional(list(string))
      capture_network_payloads     = optional(bool)
      check_certificate_revocation = optional(bool)
      ci = optional(object({
        execution_rule = optional(string)
      }))
      disable_aia_intermediate_fetching = optional(bool)
      disable_cors                      = optional(bool)
      disable_csp                       = optional(bool)
      follow_redirects                  = optional(bool)
      http_version                      = optional(string)
      ignore_certificate_validation     = optional(bool)
      ignore_server_certificate_error   = optional(bool)
      initial_navigation_timeout        = optional(number)
      min_failure_duration              = optional(number)
      min_location_failed               = optional(number)
      monitor_name                      = optional(string)
      monitor_options = optional(object({
        escalation_message       = optional(string)
        notification_preset_name = optional(string)
        renotify_interval        = optional(number)
        renotify_occurrences     = optional(number)
      }))
      monitor_priority = optional(number)
      no_screenshot    = optional(bool)
      restricted_roles = optional(set(string))
      retry = optional(object({
        count    = optional(number)
        interval = optional(number)
      }))
      rum_settings = optional(object({
        application_id  = optional(string)
        client_token_id = optional(number)
        is_enabled      = bool
      }))
      scheduling = optional(object({
        timeframes = list(object({
          day  = number
          from = string
          to   = string
        }))
        timezone = string
      }))
      tick_every = number
    }))
    request_basicauth = optional(object({
      access_key               = optional(string)
      access_token_url         = optional(string)
      add_claims_exp           = optional(bool)
      add_claims_iat           = optional(bool)
      algorithm                = optional(string)
      audience                 = optional(string)
      client_id                = optional(string)
      client_secret            = optional(string)
      domain                   = optional(string)
      expires_in               = optional(number)
      header                   = optional(string)
      password                 = optional(string)
      payload                  = optional(string)
      region                   = optional(string)
      resource                 = optional(string)
      scope                    = optional(string)
      secret                   = optional(string)
      secret_key               = optional(string)
      service_name             = optional(string)
      session_token            = optional(string)
      token_api_authentication = optional(string)
      token_prefix             = optional(string)
      type                     = optional(string)
      username                 = optional(string)
      workstation              = optional(string)
    }))
    request_client_certificate = optional(object({
      cert = object({
        content  = optional(string)
        filename = optional(string)
      })
      key = object({
        content  = optional(string)
        filename = optional(string)
      })
    }))
    request_definition = optional(object({
      body                      = optional(string)
      body_type                 = optional(string)
      call_type                 = optional(string)
      certificate_domains       = optional(list(string))
      destination_service       = optional(string)
      dns_server                = optional(string)
      dns_server_port           = optional(string)
      e2e_queries               = optional(number)
      form                      = optional(map(string))
      host                      = optional(string)
      http_version              = optional(string)
      is_message_base64_encoded = optional(bool)
      max_ttl                   = optional(number)
      mcp_protocol_version      = optional(string)
      message                   = optional(string)
      method                    = optional(string)
      no_saving_response_body   = optional(bool)
      number_of_packets         = optional(number)
      persist_cookies           = optional(bool)
      plain_proto_file          = optional(string)
      port                      = optional(string)
      proto_json_descriptor     = optional(string)
      servername                = optional(string)
      service                   = optional(string)
      should_track_hops         = optional(bool)
      source_service            = optional(string)
      tcp_method                = optional(string)
      timeout                   = optional(number)
      tool_args                 = optional(string)
      tool_name                 = optional(string)
      traceroute_queries        = optional(number)
      url                       = optional(string)
    }))
    request_file = optional(list(object({
      content            = optional(string)
      encoding           = optional(string)
      name               = string
      original_file_name = optional(string)
      size               = number
      type               = string
    })))
    request_proxy = optional(object({
      headers = optional(map(string))
      url     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.scheduling == null || (length(v.mobile_options_list.scheduling.timeframes) >= 1))
      )
    ])
    error_message = "Each timeframes list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_step == null || alltrue([for item in v.mobile_step : (item.params.element == null || (item.params.element.user_locator == null || (item.params.element.user_locator.values == null || (length(item.params.element.user_locator.values) <= 5))))])
      )
    ])
    error_message = "Each values list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.options_list == null || (v.options_list.scheduling == null || (length(v.options_list.scheduling.timeframes) >= 1))
      )
    ])
    error_message = "Each timeframes list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_definition == null || (v.request_definition.number_of_packets == null || (v.request_definition.number_of_packets >= 0 && v.request_definition.number_of_packets <= 10))
      )
    ])
    error_message = "must be between 0 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_definition == null || (v.request_definition.e2e_queries == null || (v.request_definition.e2e_queries >= 1 && v.request_definition.e2e_queries <= 10))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_definition == null || (v.request_definition.max_ttl == null || (v.request_definition.max_ttl >= 1 && v.request_definition.max_ttl <= 255))
      )
    ])
    error_message = "must be between 1 and 255"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_definition == null || (v.request_definition.traceroute_queries == null || (v.request_definition.traceroute_queries >= 1 && v.request_definition.traceroute_queries <= 10))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_definition == null || (v.request_definition.tcp_method == null || (contains(["prefer_sack", "syn", "sack"], v.request_definition.tcp_method)))
      )
    ])
    error_message = "must be one of: \"prefer_sack\", \"syn\", \"sack\""
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.request_basicauth == null || (v.request_basicauth.type == null || (contains(["web", "sigv4", "ntlm", "oauth-client", "oauth-rop", "digest", "jwt"], v.request_basicauth.type)))
      )
    ])
    error_message = "must be one of: \"web\", \"sigv4\", \"ntlm\", \"oauth-client\", \"oauth-rop\", \"digest\", \"jwt\""
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.browser_variable == null || alltrue([for item in v.browser_variable : (can(regex("^[A-Z][A-Z0-9_]+[A-Z0-9]$", item.name)))])
      )
    ])
    error_message = "must be all uppercase with underscores"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.config_variable == null || alltrue([for item in v.config_variable : (can(regex("^[A-Z][A-Z0-9_]+[A-Z0-9]$", item.name)))])
      )
    ])
    error_message = "must be all uppercase with underscores"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.options_list == null || (v.options_list.tick_every >= 30 && v.options_list.tick_every <= 604800)
      )
    ])
    error_message = "must be between 30 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.options_list == null || (v.options_list.scheduling == null || (alltrue([for item in v.options_list.scheduling.timeframes : (item.day >= 1 && item.day <= 7)])))
      )
    ])
    error_message = "must be between 1 and 7"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.options_list == null || (v.options_list.monitor_priority == null || (v.options_list.monitor_priority >= 1 && v.options_list.monitor_priority <= 5))
      )
    ])
    error_message = "must be between 1 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.tick_every >= 300 && v.mobile_options_list.tick_every <= 604800)
      )
    ])
    error_message = "must be between 300 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.scheduling == null || (alltrue([for item in v.mobile_options_list.scheduling.timeframes : (item.day >= 1 && item.day <= 7)])))
      )
    ])
    error_message = "must be between 1 and 7"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.monitor_priority == null || (v.mobile_options_list.monitor_priority >= 1 && v.mobile_options_list.monitor_priority <= 5))
      )
    ])
    error_message = "must be between 1 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.default_step_timeout == null || (v.mobile_options_list.default_step_timeout >= 1 && v.mobile_options_list.default_step_timeout <= 300))
      )
    ])
    error_message = "must be between 1 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.mobile_options_list == null || (v.mobile_options_list.verbosity == null || (v.mobile_options_list.verbosity >= 0 && v.mobile_options_list.verbosity <= 5))
      )
    ])
    error_message = "must be between 0 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_tests : (
        v.api_step == null || alltrue([for item in v.api_step : (item.request_basicauth == null || (item.request_basicauth.type == null || (contains(["web", "sigv4", "ntlm", "oauth-client", "oauth-rop", "digest", "jwt"], item.request_basicauth.type))))])
      )
    ])
    error_message = "must be one of: \"web\", \"sigv4\", \"ntlm\", \"oauth-client\", \"oauth-rop\", \"digest\", \"jwt\""
  }
  # Note: 43 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


import 'dart:convert';

enum ApplicationConfigFieldType { text, multiline, integer, boolean, jsonArray }

class ApplicationConfigFieldDefinition {
  const ApplicationConfigFieldDefinition(
    this.key,
    this.type, {
    this.editable = false,
    this.patchOnly = false,
    this.hidden = false,
  });

  final String key;
  final ApplicationConfigFieldType type;
  final bool editable;
  final bool patchOnly;
  final bool hidden;
}

class ApplicationConfigSchema {
  const ApplicationConfigSchema._();

  static const List<ApplicationConfigFieldDefinition> getFieldDefinitions = [
    ApplicationConfigFieldDefinition('id', ApplicationConfigFieldType.integer),
    ApplicationConfigFieldDefinition(
      'description',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'repository_project_id',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition('uuid', ApplicationConfigFieldType.text),
    ApplicationConfigFieldDefinition(
      'name',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition('fqdn', ApplicationConfigFieldType.text),
    ApplicationConfigFieldDefinition(
      'config_hash',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'git_repository',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'git_branch',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'git_commit_sha',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'git_full_url',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'docker_registry_image_name',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'docker_registry_image_tag',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'build_pack',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'static_image',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'install_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'build_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'start_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'ports_exposes',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'ports_mappings',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'custom_network_aliases',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'base_directory',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'publish_directory',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_enabled',
      ApplicationConfigFieldType.boolean,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_path',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_port',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_host',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_method',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_return_code',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_scheme',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_response_text',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_interval',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_timeout',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_retries',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_start_period',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_type',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'health_check_command',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'limits_memory',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_memory_swap',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_memory_swappiness',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_memory_reservation',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_cpus',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_cpuset',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'limits_cpu_shares',
      ApplicationConfigFieldType.integer,
      editable: true,
    ),
    ApplicationConfigFieldDefinition('status', ApplicationConfigFieldType.text),
    ApplicationConfigFieldDefinition(
      'preview_url_template',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'destination_type',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'destination_id',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition(
      'source_id',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition(
      'private_key_id',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition(
      'environment_id',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition(
      'dockerfile',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'dockerfile_location',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'custom_labels',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'dockerfile_target_build',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'manual_webhook_secret_github',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'manual_webhook_secret_gitlab',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'manual_webhook_secret_bitbucket',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'manual_webhook_secret_gitea',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose_location',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose',
      ApplicationConfigFieldType.multiline,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose_raw',
      ApplicationConfigFieldType.multiline,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose_domains',
      ApplicationConfigFieldType.jsonArray,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose_custom_start_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'docker_compose_custom_build_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'swarm_replicas',
      ApplicationConfigFieldType.integer,
    ),
    ApplicationConfigFieldDefinition(
      'swarm_placement_constraints',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'custom_docker_run_options',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'post_deployment_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'post_deployment_command_container',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'pre_deployment_command',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'pre_deployment_command_container',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'watch_paths',
      ApplicationConfigFieldType.multiline,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'custom_healthcheck_found',
      ApplicationConfigFieldType.boolean,
    ),
    ApplicationConfigFieldDefinition(
      'redirect',
      ApplicationConfigFieldType.text,
      editable: true,
    ),
    ApplicationConfigFieldDefinition(
      'compose_parsing_version',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'custom_nginx_configuration',
      ApplicationConfigFieldType.multiline,
    ),
    ApplicationConfigFieldDefinition(
      'is_http_basic_auth_enabled',
      ApplicationConfigFieldType.boolean,
    ),
    ApplicationConfigFieldDefinition(
      'http_basic_auth_username',
      ApplicationConfigFieldType.text,
    ),
    ApplicationConfigFieldDefinition(
      'http_basic_auth_password',
      ApplicationConfigFieldType.text,
    ),
  ];

  static const List<ApplicationConfigFieldDefinition> patchOnlyDefinitions = [
    ApplicationConfigFieldDefinition(
      'project_uuid',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
      hidden: true,
    ),
    ApplicationConfigFieldDefinition(
      'server_uuid',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
      hidden: true,
    ),
    ApplicationConfigFieldDefinition(
      'environment_name',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
      hidden: true,
    ),
    ApplicationConfigFieldDefinition(
      'github_app_uuid',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
      hidden: true,
    ),
    ApplicationConfigFieldDefinition(
      'domains',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'destination_uuid',
      ApplicationConfigFieldType.text,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_static',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_spa',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_auto_deploy_enabled',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_force_https_enabled',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'instant_deploy',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'use_build_server',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'connect_to_docker_network',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'force_domain_override',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_container_label_escape_enabled',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
    ApplicationConfigFieldDefinition(
      'is_preserve_repository_enabled',
      ApplicationConfigFieldType.boolean,
      editable: true,
      patchOnly: true,
    ),
  ];

  static List<ApplicationConfigFieldDefinition> get allDefinitions => [
    ...getFieldDefinitions,
    ...patchOnlyDefinitions,
  ];

  static const Set<String> _gitKeys = {
    'repository_project_id',
    'git_repository',
    'git_branch',
    'git_commit_sha',
    'git_full_url',
    'source_id',
    'github_app_uuid',
  };

  static const Set<String> _webhookKeys = {
    'manual_webhook_secret_github',
    'manual_webhook_secret_gitlab',
    'manual_webhook_secret_bitbucket',
    'manual_webhook_secret_gitea',
  };

  static const Set<String> _healthCheckKeys = {
    'health_check_enabled',
    'health_check_path',
    'health_check_port',
    'health_check_host',
    'health_check_method',
    'health_check_return_code',
    'health_check_scheme',
    'health_check_response_text',
    'health_check_interval',
    'health_check_timeout',
    'health_check_retries',
    'health_check_start_period',
    'health_check_type',
    'health_check_command',
    'custom_healthcheck_found',
  };

  static const Set<String> _limitsKeys = {
    'limits_memory',
    'limits_memory_swap',
    'limits_memory_swappiness',
    'limits_memory_reservation',
    'limits_cpus',
    'limits_cpuset',
    'limits_cpu_shares',
  };

  static const Set<String> _advancedKeys = {
    'build_pack',
    'docker_registry_image_name',
    'docker_registry_image_tag',
    'static_image',
    'custom_network_aliases',
    'preview_url_template',
    'dockerfile',
    'dockerfile_location',
    'custom_labels',
    'dockerfile_target_build',
    'docker_compose_location',
    'docker_compose',
    'docker_compose_raw',
    'docker_compose_domains',
    'docker_compose_custom_start_command',
    'docker_compose_custom_build_command',
    'swarm_replicas',
    'swarm_placement_constraints',
    'custom_docker_run_options',
    'post_deployment_command',
    'post_deployment_command_container',
    'pre_deployment_command',
    'pre_deployment_command_container',
    'watch_paths',
    'redirect',
    'compose_parsing_version',
    'custom_nginx_configuration',
    'is_http_basic_auth_enabled',
    'http_basic_auth_username',
    'http_basic_auth_password',
    'domains',
    'is_static',
    'is_spa',
    'is_auto_deploy_enabled',
    'is_force_https_enabled',
    'instant_deploy',
    'use_build_server',
    'connect_to_docker_network',
    'force_domain_override',
    'is_container_label_escape_enabled',
    'is_preserve_repository_enabled',
  };

  static List<ApplicationConfigFieldDefinition> get generalFields =>
      allDefinitions
          .where(
            (field) =>
                !_gitKeys.contains(field.key) &&
                !_webhookKeys.contains(field.key) &&
                !_healthCheckKeys.contains(field.key) &&
                !_advancedKeys.contains(field.key) &&
                !_limitsKeys.contains(field.key),
          )
          .toList();

  static List<ApplicationConfigFieldDefinition> get limitsFields =>
      _filterByKeys(_limitsKeys);

  static List<ApplicationConfigFieldDefinition> get gitFields =>
      _filterByKeys(_gitKeys);

  static List<ApplicationConfigFieldDefinition> get webhookFields =>
      _filterByKeys(_webhookKeys);

  static List<ApplicationConfigFieldDefinition> get healthCheckFields =>
      _filterByKeys(_healthCheckKeys);

  static List<ApplicationConfigFieldDefinition> get advancedFields =>
      _filterByKeys(_advancedKeys);

  static List<ApplicationConfigFieldDefinition> _filterByKeys(
    Set<String> keys,
  ) {
    return allDefinitions.where((field) => keys.contains(field.key)).toList();
  }

  static Map<String, dynamic> patchOnlyDefaults(Map<String, dynamic> raw) {
    return {
      'project_uuid': '',
      'server_uuid': '',
      'environment_name': '',
      'github_app_uuid': '',
      'domains': stringValue(raw['fqdn']),
      'destination_uuid': '',
      'is_static': false,
      'is_spa': false,
      'is_auto_deploy_enabled': false,
      'is_force_https_enabled': false,
      'instant_deploy': false,
      'use_build_server': false,
      'connect_to_docker_network': false,
      'force_domain_override': false,
      'is_container_label_escape_enabled': false,
      'is_preserve_repository_enabled': false,
    };
  }

  static String readText(
    ApplicationConfigFieldDefinition field,
    Map<String, dynamic> raw,
    Map<String, dynamic> patchDefaults,
  ) {
    final value = field.patchOnly ? patchDefaults[field.key] : raw[field.key];

    if (value is List || value is Map) {
      return const JsonEncoder.withIndent('  ').convert(value);
    }

    final text = stringValue(value);
    if (field.type == ApplicationConfigFieldType.jsonArray) {
      if (text.isEmpty || text == 'string') {
        return '[]';
      }
      if (text.trimLeft().startsWith('[')) {
        return text;
      }
    }

    return text;
  }

  static bool readBool(
    ApplicationConfigFieldDefinition field,
    Map<String, dynamic> raw,
    Map<String, dynamic> patchDefaults,
  ) {
    final value = field.patchOnly ? patchDefaults[field.key] : raw[field.key];

    if (value is bool) return value;
    if (value is num) return value != 0;
    if (value is String) {
      final normalized = value.trim().toLowerCase();
      return normalized == 'true' || normalized == '1';
    }

    return false;
  }

  static String stringValue(dynamic value) {
    if (value == null) return '';
    if (value is String) return value;
    return '$value';
  }
}

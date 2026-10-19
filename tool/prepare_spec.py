#!/usr/bin/env python3
"""Turns docs/openapi.json into a spec the Dart generator can digest.

The Coolify spec is OpenAPI 3.1 but only uses 3.0 constructs, and the Dart
generator of openapi-generator 7.x crashes on 3.1. A few schemas are also too
loose or wrong for it; each fix below documents why.

Usage: prepare_spec.py <in.json> <out.json>
"""
import json
import sys


def walk(node, fn):
    if isinstance(node, dict):
        fn(node)
        for value in node.values():
            walk(value, fn)
    elif isinstance(node, list):
        for value in node:
            walk(value, fn)


def main(src, dst):
    spec = json.load(open(src))
    spec['openapi'] = '3.0.3'

    # `lines` is `oneOf [integer, "all"]`, which the generator turns into an
    # empty class that does not compile. A string carries both ("100", "all").
    def fix_lines(node):
        if node.get('name') == 'lines' and 'oneOf' in node.get('schema', {}):
            node['schema'] = {'type': 'string', 'default': '100'}

    walk(spec, fix_lines)

    # Plain `type: object` without properties makes the generator emit
    # `Object.listFromJson`, which does not compile. Free-form maps it is.
    def free_form_array(node):
        # Arrays of free-form objects make the generator emit code that does
        # not compile. Dropping the type makes the value plain JSON (`Object`).
        items = node.get('items')
        if node.get('type') == 'array' and isinstance(items, dict) \
                and items.get('type') == 'object' and 'properties' not in items \
                and '$ref' not in items:
            del node['type']
            del node['items']

    walk(spec, free_form_array)

    def loosen(node):
        if node.get('type') == 'object' and 'properties' not in node \
                and 'additionalProperties' not in node and 'oneOf' not in node:
            node['additionalProperties'] = {}

        # Validation errors: `errors: {field: [messages]}` is emitted with a
        # type that does not compile; the app only displays them anyway.
        errors = node.get('properties', {}).get('errors')
        if isinstance(errors, dict) and isinstance(errors.get('additionalProperties'), dict):
            errors['additionalProperties'] = True

    walk(spec, loosen)

    # Documented as returning `Application`, but it returns deployments.
    # (The app additionally decodes this endpoint by hand, see DeploymentsApi.)
    ok = spec['paths']['/deployments/applications/{uuid}']['get']['responses']['200']
    ok['content']['application/json']['schema'] = {
        'type': 'array',
        'items': {'$ref': '#/components/schemas/ApplicationDeploymentQueue'},
    }

    # PATCH /security/keys/{uuid} reuses the create body, which makes
    # `private_key` required; updating name or description alone is valid.
    update_key = spec['paths']['/security/keys/{uuid}']['patch']['requestBody']['content']['application/json']
    schema = json.loads(json.dumps(update_key['schema']))
    schema.pop('required', None)
    update_key['schema'] = schema

    # The environment schema lacks `uuid` and `project_uuid`. The app needs
    # the uuid to create resources and has always read it from this endpoint.
    environment = spec['components']['schemas']['Environment']['properties']
    environment.setdefault('uuid', {'type': 'string'})
    environment.setdefault('project_uuid', {'type': 'string'})

    json.dump(spec, open(dst, 'w'))


if __name__ == '__main__':
    main(*sys.argv[1:3])

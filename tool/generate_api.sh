#!/usr/bin/env bash
# Regenerates packages/coolify_api from docs/openapi.json.
# Needs Java 11+ and python3. The generator jar is cached in tool/.cache.
set -euo pipefail

cd "$(dirname "$0")/.."

GENERATOR_VERSION=7.10.0
JAR="tool/.cache/openapi-generator-cli-$GENERATOR_VERSION.jar"
OUT=packages/coolify_api

mkdir -p tool/.cache
if [ ! -f "$JAR" ]; then
  curl -fsSL -o "$JAR" \
    "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$GENERATOR_VERSION/openapi-generator-cli-$GENERATOR_VERSION.jar"
fi

python3 tool/prepare_spec.py docs/openapi.json tool/.cache/openapi.generator.json

rm -rf "$OUT"
java -jar "$JAR" generate \
  -i tool/.cache/openapi.generator.json \
  -g dart \
  -o "$OUT" \
  --skip-validate-spec \
  -p pubName=coolify_api,pubVersion=0.1.0,pubDescription="Generated Coolify API client" \
  --global-property apiTests=false,modelTests=false,apiDocs=false,modelDocs=false

# Not needed in the app and would pull in a pinned test dependency.
rm -rf "$OUT/test" "$OUT/.openapi-generator" "$OUT/.travis.yml" "$OUT/git_push.sh" "$OUT/.gitignore"
echo "Generated $OUT"

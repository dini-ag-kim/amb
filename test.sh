#!/bin/sh

set -e

run_ajv () {
  ajv test -s draft/schemas/schema.json -r "draft/schemas/!(schema).json" \
           -d "$1" -c ajv-formats $2
}

run_ajv "draft/examples/valid/*.json" --valid
run_ajv "draft/examples/invalid/*.json" --invalid

echo "All tests \033[0;32mPASSED\033[0m\n"

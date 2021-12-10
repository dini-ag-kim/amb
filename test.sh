#!/bin/bash

set -e

		ajv test -s draft/schemas/schema.json -r "draft/schemas/!(schema).json" -d "draft/examples/valid/*.json" -c ajv-formats --valid
		ajv test -s draft/schemas/schema.json -r "draft/schemas/!(schema).json" -d "draft/examples/invalid/*.json" -c ajv-formats --invalid

if [ $? -eq 0 ]
then
  echo -e "All tests \033[0;32mPASSED\033[0m\n"
fi

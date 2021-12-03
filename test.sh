#!/bin/bash

set -e

# Test JSON examples against schema
for version in "draft"; do
	echo "Testing version: $version"

#	for ` $version/schemas/schema.json`; do
#		echo "Testing $schema_file"
#		schema_name=$(echo "$schema_file" | cut -f 1 -d '.')
		ajv test -s $version/schemas/schema.json -r "$version/schemas/!(schema).json" -d "$version/examples/valid/*.json" --valid
		ajv test -s $version/schemas/schema.json -r "$version/schemas/!(schema).json" -d "$version/examples/invalid/*.json" --invalid
#		echo ""
#	done
done

if [ $? -eq 0 ]
then
  echo -e "All tests \033[0;32mPASSED\033[0m\n"
fi

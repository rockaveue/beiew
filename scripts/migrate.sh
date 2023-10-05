#!/bin/bash

arg="${1:-"migrate"}"
name="${2:-"default"}"

target="prisma/down/down.sql"

# if first argument is `down` generate down migration
# if argument is `run` run the existing migration
# else migrate and generate down
if [ "$arg" = 'down' ]; then
  yarn generate-down $target
elif [ "$arg" = 'run' ]; then
  yarn prisma migrate dev --name $name
else
  yarn generate-down $target
  yarn prisma migrate dev --name $name
fi

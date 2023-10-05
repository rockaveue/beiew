#!/bin/bash

RESOLVE_MIGRATION=$1

dir_prefix="prisma/down"

up_dir_prefix="prisma/migrations"

file="$dir_prefix/down.sql"

if [ ! -d $file ]; then
  echo "$file directory does not exist."
fi

# for dir in $up_dir_prefix; do
#   if [ ! -d "$dir" ] && [ "$dir" != *$RESOLVE_MIGRATION* ]; then
#     echo "$RESOLVE_MIGRATION resolve parameter does not exist."
#   fi
# done

# yarn prisma migrate resolve --rolled-back $RESOLVE_MIGRATION

yarn prisma db execute --file $file --schema prisma/schema.prisma

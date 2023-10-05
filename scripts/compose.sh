#!/bin/bash

MIGRATION_NAME="${1:-'default'}"

docker-compose -f docker-compose.yml up -d

while ! docker exec beiew_dev psql postgresql://beiew:beiew@127.0.0.1:5432/beiew -c "SELECT 1" >/dev/null 2>&1; do
  sleep 1
  echo "Waiting for Postgres container to start..."
done

yarn migrate run $MIGRATION_NAME
# yarn prisma db seed

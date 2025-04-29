#!/bin/bash
set -e

CONTAINER_NAME="data_modeling_lab_yh"
DB_NAME="data_modeling_lab_yh"
DB_USER="postgres"

echo "🟡 Running a container..."
docker compose up -d

echo "⏳ Waiting for container to be ready..."
until docker exec "$CONTAINER_NAME" pg_isready -U "$DB_USER" -d "$DB_NAME" > /dev/null 2>&1; do
  sleep 2
done

echo "✅ The container is ready!"

echo "📂 Copying SQL files to container..."
docker cp "$(pwd)/sql" "$CONTAINER_NAME":/sql/

echo "🔥 Dropping all existing objects..."
docker exec -u postgres "$CONTAINER_NAME" bash -c "cd /sql && psql -d $DB_NAME -f drop_tables.sql"

echo "📦 Executing create_tables.sql..."
docker exec -u postgres "$CONTAINER_NAME" bash -c "cd /sql && psql -d $DB_NAME -f create_tables.sql"

echo "📦 Executing constraints_triggers.sql..."
docker exec -u postgres "$CONTAINER_NAME" bash -c "cd /sql && psql -d $DB_NAME -f constraints_triggers.sql"

echo "📦 Executing insert_data.sql..."
docker exec -u postgres "$CONTAINER_NAME" bash -c "cd /sql && psql -d $DB_NAME -f insert_data.sql"

echo "🎉 Done! Database initialized."



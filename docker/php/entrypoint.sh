#!/bin/sh
set -e

echo "Waiting for MySQL to be ready at $DB_HOST:$DB_PORT..."
until nc -z -v -w30 "$DB_HOST" "$DB_PORT"
do
  echo "Database not ready yet..."
  sleep 5
done

# Optional: create DB if it doesn't exist
echo "Ensuring database '$DB_DATABASE' exists..."
mysql -h "$DB_HOST" -u"$DB_USERNAME" -p"$DB_PASSWORD" \
  -e "CREATE DATABASE IF NOT EXISTS \`$DB_DATABASE\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# Run migrations safely
echo "Running migrations..."
php artisan migrate --force

# Warm caches (optional but recommended)
php artisan config:cache
php artisan route:cache

echo "Starting PHP-FPM..."
exec php-fpm

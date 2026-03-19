#!/bin/bash
set -e

echo "Preparing SQL Server directories..."

mkdir -p /var/opt/mssql
mkdir -p /var/opt/mssql/.system
mkdir -p /var/opt/mssql/data
mkdir -p /var/opt/mssql/log
mkdir -p /var/opt/mssql/secrets

chown -R mssql:root /var/opt/mssql || true
chmod -R 770 /var/opt/mssql || true

export HOME=/var/opt/mssql

echo "Starting SQL Server..."
exec su mssql -c "/opt/mssql/bin/sqlservr"
#!/bin/bash
echo "=========================================="
echo "  Alumni Platform - Starting Backend..."
echo "=========================================="
cd "$(dirname "$0")/backend"
mvn clean install -DskipTests && mvn spring-boot:run

#!/bin/bash
echo "=========================================="
echo "  Alumni Platform - Starting Frontend..."
echo "=========================================="
cd "$(dirname "$0")/frontend"
npm install && npm start

#!/bin/bash

# Run ansible with environment variables
echo ""
echo "🚀 Starting deployment..."

set -a && source .env && set +a

ansible-playbook playbooks/deploy.yml \
    -e flask_app_repo="$FLASK_APP_REPO" \
    -e webapp_image="$WEBAPP_IMAGE" \
    "$@"

echo ""
echo "✅ Deployment completed!"
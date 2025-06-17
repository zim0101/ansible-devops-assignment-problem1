#!/bin/bash

# Deploy monitoring stack using Ansible
echo ""
echo "🔍 Starting monitoring stack deployment..."

# Load environment variables
set -a && source .env && set +a

# Run the monitoring playbook
ansible-playbook playbooks/monitoring.yml "$@"

echo ""
echo "✅ Monitoring deployment completed!"
echo ""
echo "🌐 Access your monitoring services:"
echo "- Grafana: http://192.168.123.20:3001 (admin/admin123)"
echo "- Prometheus: http://192.168.123.20:9090"
echo "- Your App: http://192.168.123.20:80"
echo ""
echo "📊 Next step: Deploy Node Exporter on all VMs"
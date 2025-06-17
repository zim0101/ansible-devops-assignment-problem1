#!/bin/bash

# Deploy Node Exporter on all VMs
echo ""
echo "📊 Starting Node Exporter deployment on all VMs..."

# Load environment variables
set -a && source .env && set +a

# Run the node exporter playbook on all VMs
ansible-playbook playbooks/node-exporter.yml "$@"

echo ""
echo "✅ Node Exporter deployment completed!"
echo ""
echo "📈 Node Exporter endpoints:"
echo "- VM1 (node1): http://192.168.123.10:9100/metrics"
echo "- VM2 (node2): http://192.168.123.11:9100/metrics"
echo "- VM3 (node3): http://192.168.123.12:9100/metrics"
echo "- Proxy VM: http://192.168.123.20:9100/metrics"
echo ""
echo "🎯 Next: Check Prometheus targets at http://prometheus.myapp.com:8080/targets"
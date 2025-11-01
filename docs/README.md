# MCP Proxmox Server Documentation

This directory contains comprehensive documentation for the MCP Proxmox Server project.

## 📚 Documentation Index

### Getting Started
- [Main README](../README.md) - Project overview, installation, and quick start
- [MCP Server Start Guide](MCP_SERVER_START_GUIDE.md) - Detailed server setup and configuration

### Features & Specifications

#### Multi-Cluster Management
- [Multi-Cluster Quick Start](MULTI_CLUSTER_QUICK_START.md) - Quick setup for managing multiple Proxmox clusters
- [Multi-Cluster Specification](MULTI_CLUSTER_SPEC.md) - Detailed technical specification for multi-cluster features

#### VM/LXC Notes Management
- [Notes Feature Implementation](NOTES_FEATURE_IMPLEMENTATION.md) - HTML/Markdown notes management for VMs and LXCs

#### OpenShift Deployment
- [OpenShift LAN Exposure Guide](openshift_lan_exposure_guide.md) - Deploy OpenShift with LAN accessibility
- [OpenShift LAN Access Guide](openshift_lan_access_guide.md) - Configure network access for OpenShift clusters

### Advanced Features
- [Additional Features Suggestions](additional_features_suggestions.md) - Comprehensive list of advanced features and capabilities

## 🔧 Configuration Guides

### Environment Setup
All configuration is done through environment variables in the `.env` file at the project root.

**Basic Configuration:**
```bash
PROXMOX_API_URL="https://proxmox.example.com:8006"
PROXMOX_TOKEN_ID="root@pam!mcp-proxmox"
PROXMOX_TOKEN_SECRET="your-secret-token"
PROXMOX_VERIFY="true"
PROXMOX_DEFAULT_NODE="pve"
PROXMOX_DEFAULT_STORAGE="local-lvm"
PROXMOX_DEFAULT_BRIDGE="vmbr0"
```

**Multi-Cluster Configuration:**
```bash
PROXMOX_CLUSTER_1_NAME="production"
PROXMOX_CLUSTER_1_API_URL="https://prod.example.com:8006"
PROXMOX_CLUSTER_1_TOKEN_ID="root@pam!prod-token"
PROXMOX_CLUSTER_1_TOKEN_SECRET="prod-secret"
```

See [Multi-Cluster Quick Start](MULTI_CLUSTER_QUICK_START.md) for detailed multi-cluster setup.

## 🎯 Use Cases

### Basic Operations
1. **VM Management** - Create, clone, start, stop, migrate VMs
2. **Container Management** - Deploy and manage LXC containers
3. **Cloud-Init Provisioning** - Automated VM configuration
4. **Snapshot Management** - Create and restore snapshots
5. **Backup Operations** - Backup and restore VMs/containers

### Advanced Operations
1. **Multi-Cluster Management** - Manage multiple Proxmox clusters
2. **OpenShift Deployment** - Deploy and configure OpenShift clusters
3. **Network Configuration** - VLAN setup, firewall rules
4. **Storage Management** - Multi-storage operations
5. **Monitoring & Metrics** - Performance tracking and analysis

### Enterprise Features
1. **Infrastructure as Code** - Terraform and Ansible integration
2. **Security Management** - MFA, certificates, secrets
3. **AI-Powered Optimization** - Predictive scaling and anomaly detection
4. **Compliance & Auditing** - Security scanning and compliance checks

## 📖 API Reference

### Tool Categories

#### Discovery & Monitoring
- Node management and status
- VM and LXC listing and details
- Storage and network information
- Performance metrics

#### Lifecycle Management
- VM creation, cloning, deletion
- Power state management
- Migration and resizing
- Template conversion

#### Configuration
- Cloud-init setup
- Network interface management
- Firewall configuration
- Resource allocation

#### Data Management
- Snapshot operations
- Backup and restore
- Storage operations
- Template management

#### Access Control
- User management
- Role assignment
- Pool management
- Permission configuration

See the main [README](../README.md) for a complete list of available tools.

## 🔐 Security Best Practices

### API Token Management
1. Create dedicated API tokens for different purposes
2. Use least privilege principle
3. Rotate tokens regularly
4. Never commit tokens to version control

### Secret Storage
1. **DO NOT** store secrets in VM/LXC notes
2. Use the `proxmox-secret-store` tool for sensitive data
3. Enable SSL/TLS verification in production
4. Use separate credentials for different environments

### Network Security
1. Configure firewall rules appropriately
2. Use VLANs for network segmentation
3. Enable SSL certificate verification
4. Restrict API access by IP when possible

## 🧪 Testing

### Running Tests
```bash
source .venv/bin/activate
python tests/test_notes_feature.py
```

### Verification Scripts
```bash
# Verify notes feature
python scripts/verify_notes_feature.py

# Interactive testing
python scripts/userinput.py
```

## 🐛 Troubleshooting

### Common Issues

#### Module Import Errors
**Problem:** `ModuleNotFoundError` when running the server

**Solution:**
```bash
source .venv/bin/activate
pip install -r requirements.txt
```

#### API Connection Issues
**Problem:** Cannot connect to Proxmox API

**Solution:**
1. Verify API URL is correct
2. Check API token has proper permissions
3. Ensure SSL certificate is valid (or set `PROXMOX_VERIFY="false"` for testing)
4. Check network connectivity to Proxmox host

#### MCP Server Not Starting
**Problem:** Server fails to start or crashes

**Solution:**
1. Check `.env` file exists and has correct values
2. Verify all dependencies are installed
3. Check logs for specific error messages
4. Ensure Python version is 3.8 or higher

### Debug Mode

Enable verbose logging by setting environment variable:
```bash
export MCP_DEBUG=1
python -m proxmox_mcp.server
```

## 📞 Support

### Getting Help
- **GitHub Issues**: [Create an issue](https://github.com/bsahane/mcp-proxmox/issues)
- **Documentation**: Check this directory for guides
- **MCP Reference**: [Model Context Protocol](https://modelcontextprotocol.io/)

### Reporting Bugs
Include the following information:
1. Python version (`python --version`)
2. Proxmox VE version
3. Error messages or logs
4. Steps to reproduce
5. Expected vs actual behavior

### Feature Requests
See [additional_features_suggestions.md](additional_features_suggestions.md) for planned features, or open an issue to suggest new features.

## 🔄 Updates & Maintenance

### Updating Dependencies
```bash
source .venv/bin/activate
pip install -r requirements.txt --upgrade
```

### Checking for Updates
```bash
git fetch origin
git log HEAD..origin/main --oneline
```

### Version History
See [CHANGELOG.md](../CHANGELOG.md) for version history and release notes.

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.

---

**Last Updated:** November 2024  
**Documentation Version:** 1.0.0


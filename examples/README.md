# MCP Proxmox Server Examples

This directory contains practical examples for using the MCP Proxmox Server.

## 📋 Example Categories

### Basic Operations
- [VM Management](vm_management.md) - Creating, cloning, and managing VMs
- [Container Operations](container_operations.md) - LXC container lifecycle
- [Cloud-Init Setup](cloudinit_examples.md) - Automated VM provisioning

### Advanced Features
- [Multi-Cluster Management](multi_cluster_examples.md) - Managing multiple Proxmox clusters
- [Network Configuration](network_examples.md) - VLAN and firewall setup
- [Backup & Restore](backup_examples.md) - Snapshot and backup operations

### Integration Examples
- [Ansible Integration](ansible_integration.md) - Using with Ansible
- [Terraform Integration](terraform_integration.md) - Infrastructure as Code
- [CI/CD Pipeline](cicd_examples.md) - Automated deployments

## 🚀 Quick Start Examples

### Example 1: List All VMs

**Request:**
```json
{
  "tool": "proxmox-list-vms",
  "params": {
    "node": "pve"
  }
}
```

**Response:**
```json
[
  {
    "vmid": 100,
    "name": "web-server",
    "status": "running",
    "cpu": 2,
    "mem": 4294967296
  }
]
```

### Example 2: Clone a VM

**Request:**
```json
{
  "tool": "proxmox-clone-vm",
  "params": {
    "source_vmid": 101,
    "new_vmid": 200,
    "name": "web-server-02",
    "storage": "local-lvm",
    "confirm": true,
    "wait": true
  }
}
```

### Example 3: Configure Cloud-Init

**Request:**
```json
{
  "tool": "proxmox-cloudinit-set",
  "params": {
    "name": "web-server-02",
    "ipconfig0": "ip=192.168.1.50/24,gw=192.168.1.1",
    "ciuser": "admin",
    "sshkeys": "ssh-rsa AAAAB3...",
    "confirm": true
  }
}
```

### Example 4: Create Snapshot

**Request:**
```json
{
  "tool": "proxmox-create-snapshot",
  "params": {
    "name": "web-server-02",
    "snapname": "before-update",
    "description": "Snapshot before system update",
    "confirm": true
  }
}
```

### Example 5: Multi-Cluster VM Listing

**Request:**
```json
{
  "tool": "proxmox-list-all-vms-from-all-clusters",
  "params": {}
}
```

**Response:**
```json
{
  "production": [
    {"vmid": 100, "name": "prod-web-01", "status": "running"}
  ],
  "staging": [
    {"vmid": 200, "name": "staging-web-01", "status": "running"}
  ]
}
```

## 💡 Common Workflows

### Workflow 1: Deploy New Web Server

1. Clone template VM
2. Configure cloud-init with IP and SSH keys
3. Start VM
4. Wait for cloud-init to complete
5. Register in monitoring system

### Workflow 2: Backup and Migrate VM

1. Create snapshot before migration
2. Stop VM (or use live migration)
3. Migrate to target node
4. Verify VM status
5. Start VM on new node
6. Remove old snapshot after verification

### Workflow 3: Scale Application

1. List existing application VMs
2. Clone template for new instances
3. Configure unique IPs via cloud-init
4. Start new VMs
5. Add to load balancer pool

## 🔧 Advanced Examples

### OpenShift Single Node Deployment

```python
# Deploy OpenShift SNO with specific network configuration
{
  "tool": "proxmox-create-vm",
  "params": {
    "vmid": 341,
    "name": "openshift-sno",
    "cores": 8,
    "memory": 32768,
    "disk_gb": 120,
    "bridge": "vmbr0",
    "vlan": 3,
    "confirm": true
  }
}

# Configure static IP
{
  "tool": "proxmox-cloudinit-set",
  "params": {
    "vmid": 341,
    "ipconfig0": "ip=192.168.3.41/24,gw=192.168.3.1",
    "confirm": true
  }
}
```

### VM Notes Management

```python
# Read VM notes
{
  "tool": "proxmox-vm-notes-read",
  "params": {
    "vmid": 100,
    "format": "html",
    "parse_secrets": true
  }
}

# Update VM notes with HTML
{
  "tool": "proxmox-vm-notes-update",
  "params": {
    "vmid": 100,
    "content": "<h1>Web Server</h1><p>Production web server</p>",
    "format": "html",
    "validate": true,
    "backup": true,
    "confirm": true
  }
}
```

### VLAN Configuration

```python
# Create VLAN for isolated network
{
  "tool": "proxmox-create-vlan",
  "params": {
    "node": "pve",
    "bridge": "vmbr0",
    "vlan_id": 100,
    "confirm": true
  }
}

# Assign VM to VLAN
{
  "tool": "proxmox-vm-nic-add",
  "params": {
    "vmid": 100,
    "bridge": "vmbr0",
    "vlan": 100,
    "confirm": true
  }
}
```

## 📚 Additional Resources

- [Main Documentation](../docs/README.md)
- [API Reference](../README.md#-available-tools)
- [Contributing Guide](../CONTRIBUTING.md)

## 🤝 Contributing Examples

Have a useful example? Contributions are welcome!

1. Create a new markdown file in this directory
2. Follow the existing format
3. Include clear descriptions and expected outputs
4. Submit a pull request

---

**Note:** Replace placeholder values (IPs, VMIDs, names) with your actual configuration.


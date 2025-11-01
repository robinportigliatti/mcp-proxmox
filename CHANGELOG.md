# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- VM/LXC notes management with HTML and Markdown support
- Multi-cluster management capabilities
- Security and authentication enhancements (MFA, certificates, secrets)
- Infrastructure automation (Terraform, Ansible, GitOps)
- Network management (VLAN, firewall orchestration, VPN)
- Advanced monitoring and observability features
- AI-powered optimization and anomaly detection
- Storage replication and migration tools
- Integration with third-party services
- Specialized deployment support (OpenShift, RHCOS, Windows, Docker Swarm)

### Changed
- Improved project structure and organization
- Enhanced documentation with comprehensive README
- Consolidated multiple documentation files into single sources

### Fixed
- Module import issues with YAML and Git dependencies
- BrokenPipeError in MCP server communication
- API token handling in multi-cluster scenarios

## [1.0.0] - 2024-01-XX

### Added
- Initial release with core Proxmox MCP server functionality
- VM lifecycle management (create, clone, start, stop, migrate, delete)
- LXC container management
- Cloud-init integration
- Snapshot and backup operations
- Network configuration and firewall management
- Storage operations
- User and permission management
- Resource pool management
- Task monitoring and metrics
- QEMU Guest Agent integration

### Security
- API token-based authentication
- SSL/TLS verification support
- Role-based access control integration

---

## Release Notes

### Version 1.0.0
First stable release of MCP Proxmox Server with comprehensive Proxmox VE management capabilities through the Model Context Protocol.

**Key Features:**
- Complete VM and LXC lifecycle management
- Cloud-init automated provisioning
- Snapshot and backup operations
- Network and firewall configuration
- Resource monitoring and metrics
- User and permission management

**Requirements:**
- Python 3.8+
- Proxmox VE 7.0+
- Valid API token with appropriate permissions


"""
MCP Proxmox - A Model Context Protocol (MCP) server for Proxmox Virtual Environment
"""

__version__ = "0.1.0"

from .client import ProxmoxClient
from .server import server
from .utils import require_confirm, format_size
from .cloudinit import CloudInitConfig, CloudInitProvisioner
from .rhcos import IgnitionConfig, RHCOSProvisioner, OpenShiftInstaller
from .windows import WindowsConfig, WindowsProvisioner
from .docker_swarm import DockerSwarmConfig, DockerSwarmProvisioner

__all__ = [
    "__version__",
    "ProxmoxClient",
    "server", 
    "require_confirm",
    "format_size",
    "CloudInitConfig",
    "CloudInitProvisioner",
    "IgnitionConfig",
    "RHCOSProvisioner",
    "OpenShiftInstaller",
    "WindowsConfig",
    "WindowsProvisioner",
    "DockerSwarmConfig",
    "DockerSwarmProvisioner"
]

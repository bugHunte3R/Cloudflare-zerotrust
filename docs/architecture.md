# Architecture

## Overview

Cloudflare acts as the controlled entry point for selected applications hosted in the private homelab.

The origin applications are not directly published through router web-port forwarding.

## Components

```text
Cloudflare Zero Trust
├── DNS
├── Access Applications
├── Access Policies
├── Identity Provider
├── Country and IP Conditions
├── Service Tokens
└── Audit Visibility

Homelab
├── cloudflared LXC
├── Docker services
├── Nextcloud
├── Administrative tools
└── Private network
```

## Trust Model

Access is not granted solely because a request reaches the hostname.

The request must pass:

1. Cloudflare edge controls
2. Identity verification when configured
3. Access policy evaluation
4. Country, IP or group requirements
5. Tunnel routing
6. Origin application authentication

## Design Principles

- Default-deny for sensitive applications
- Explicitly approved identities
- Limited session duration
- Private origins
- No secrets in public documentation
- Separate service authentication for automated systems
- VPN preferred for critical infrastructure interfaces

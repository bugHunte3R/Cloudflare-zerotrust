# Zero Trust Access Control

## Purpose

Cloudflare Access protects applications before requests reach the private origin.

## Evaluation Concept

```text
Request
  |
  v
Application match
  |
  v
Identity verification
  |
  v
Access policy evaluation
  |
  +--> Allow
  |
  +--> Block
  |
  +--> Bypass
  |
  +--> Service Auth
```

## Sensitive Applications

Sensitive administrative tools should use a restrictive policy or remain VPN-only.

Examples:

- Portainer
- Infrastructure dashboards
- UniFi administration
- Internal diagnostics
- Private APIs

## Defense in Depth

Cloudflare Access should complement, not replace:

- Application login
- Multi-factor authentication
- Network restrictions
- Role-based permissions
- VPN access
- Local firewall rules

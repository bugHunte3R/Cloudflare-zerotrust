# Cloudflare Tunnel

## Purpose

Cloudflare Tunnel connects private applications to Cloudflare through outbound connector sessions.

## Connector Location

The connector runs in a dedicated Debian Linux container.

This separation provides:

- Easier troubleshooting
- Independent updates
- Clear service ownership
- Reduced dependency conflicts
- Isolated credentials
- Dedicated restart policies

## Example Routing

```text
application.example.com -> http://192.0.2.20:8080
cloud.example.com       -> http://192.0.2.23:80
admin.example.com       -> https://192.0.2.30:9443
```

These addresses and domains are placeholders.

## Operational Checks

```bash
systemctl status cloudflared
journalctl -u cloudflared --since today
cloudflared --version
```

## Sensitive Files

Never publish:

- Tunnel tokens
- Credential JSON files
- Certificate files
- Real ingress hostnames
- Real origin addresses
- Account IDs
- Tunnel IDs

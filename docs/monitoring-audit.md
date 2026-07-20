# Monitoring and Audit

## Areas to Monitor

- Tunnel connector health
- Active connectors
- Authentication failures
- Access denials
- Policy changes
- Unexpected countries
- Repeated source IP addresses
- Service-token usage
- Origin availability
- DNS and certificate state

## Local Connector Checks

```bash
systemctl status cloudflared
journalctl -u cloudflared --since today
systemctl --failed
```

## Audit Principles

- Review unexpected access attempts
- Review policy changes
- Remove unused identities
- Rotate expired tokens
- Review application inventory
- Confirm protected origins are not directly exposed

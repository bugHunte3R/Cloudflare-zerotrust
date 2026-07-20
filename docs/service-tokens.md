# Service Tokens

## Purpose

Service tokens provide non-interactive authentication for approved machine-to-machine requests.

Use cases:

- Automated health checks
- Internal API requests
- Scheduled jobs
- Monitoring systems
- CI/CD integrations

## Conceptual Request

```text
Automated client
      |
      v
Client ID and client secret
      |
      v
Cloudflare Access
      |
      v
Protected service
```

## Security Practices

- Use one token per integration
- Apply least privilege
- Set an expiration date
- Rotate tokens
- Revoke unused tokens
- Never commit token values
- Do not reuse personal API tokens
- Restrict the target application

Only placeholders are included in this repository.

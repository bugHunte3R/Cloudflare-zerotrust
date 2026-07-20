# Security Policy

## Public Repository

This repository contains sanitized Cloudflare Zero Trust documentation and examples only.

It does not contain the production configuration.

## Sensitive Information

Never publish:

- Cloudflare API tokens
- Global API keys
- Tunnel tokens
- Tunnel credential JSON files
- Service-token client secrets
- Account IDs
- Zone IDs
- Real domains
- Real email addresses
- Identity-provider tenant values
- Internal addresses
- Block lists
- Access logs
- Authentication cookies

## Accidental Exposure

If a secret is committed:

1. Revoke or rotate it immediately.
2. Remove it from current files.
3. Remove it from Git history.
4. Review relevant audit logs.
5. Replace the exposed credential.
6. Update `.gitignore` or secret scanning.

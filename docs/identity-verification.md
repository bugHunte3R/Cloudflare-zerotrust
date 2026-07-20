# Identity Verification

## Authentication Options

Depending on the deployment, Cloudflare Access can integrate with:

- Email one-time PIN
- Google
- Microsoft Entra ID
- GitHub
- Okta
- Cloudflare account membership
- Other supported identity providers

## Personal Homelab Model

A simple personal model can use:

- A restricted list of approved email addresses
- One-time PIN verification
- Short session duration
- Additional country or IP requirements
- Application authentication after Cloudflare Access

## Authentication Flow

```text
User requests application
        |
        v
Cloudflare requests identity
        |
        v
Identity provider validates user
        |
        v
Cloudflare evaluates policy
        |
        v
Origin receives authorized request
```

## Security Notes

- Do not allow arbitrary email addresses
- Use a trusted identity provider for sensitive systems
- Review identity-provider access regularly
- Remove old approved identities
- Keep application authentication enabled

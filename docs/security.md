# Security

## Security Controls

- Private origins
- Outbound tunnel connections
- Identity verification
- Access policy enforcement
- Country and IP restrictions
- Application authentication
- Service-token authentication
- Limited sessions
- Audit visibility
- Least privilege
- Secret separation

## Never Publish

- API tokens
- Tunnel tokens
- Tunnel credentials
- Service-token secrets
- Account IDs
- Zone IDs
- Access application IDs
- Policy IDs
- Real email addresses
- Identity-provider configuration
- Real domains
- Internal addresses
- Block lists
- Audit logs
- Authentication cookies

## Lockout Prevention

Before enabling a restrictive policy:

1. Keep an existing administrative session available.
2. Create and test the allow rule.
3. Verify identity-provider access.
4. Test in a private browser session.
5. Confirm the application origin remains reachable internally.
6. Add block or exclusion rules only after successful testing.

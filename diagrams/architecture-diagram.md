# Architecture Diagram

```mermaid
flowchart LR
    User[User]
    Cloudflare[Cloudflare Edge]
    Access[Zero Trust Access]
    IdP[Identity Provider]
    Tunnel[cloudflared Connector]
    Origin[Private Origin]

    User --> Cloudflare
    Cloudflare --> Access
    Access --> IdP
    IdP --> Access
    Access --> Tunnel
    Tunnel --> Origin
```

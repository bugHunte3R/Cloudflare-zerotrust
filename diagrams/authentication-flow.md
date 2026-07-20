# Authentication Flow

```mermaid
sequenceDiagram
    participant User
    participant Cloudflare
    participant Identity
    participant Origin

    User->>Cloudflare: Request application
    Cloudflare->>Identity: Authenticate user
    Identity-->>Cloudflare: Identity assertion
    Cloudflare->>Cloudflare: Evaluate policy
    Cloudflare->>Origin: Forward allowed request
    Origin-->>User: Application response
```

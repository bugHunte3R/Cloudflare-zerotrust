# Country and IP Restrictions

## Country Rules

Country-based conditions can limit or deny requests based on geolocation.

Example use cases:

- Allow administrative access only from expected countries
- Block regions that should never access a private application
- Challenge suspicious traffic to a public website
- Narrow the eligible population after identity verification

## IP Rules

IP rules can:

- Allow trusted source networks
- Block known abusive IP addresses
- Block unwanted networks
- Challenge suspicious visitors
- Limit an administrative application to a known address range

## Important Limitations

Country and IP controls are supplementary security signals.

They can be affected by:

- VPN services
- Proxies
- Corporate gateways
- Mobile carrier routing
- Dynamic residential addresses
- IPv6 address changes

Identity verification and application authentication remain important.

## Documentation Examples

```text
Trusted source: 192.0.2.10
Blocked source: 203.0.113.50
Trusted range:  198.51.100.0/24
```

These are reserved documentation addresses.

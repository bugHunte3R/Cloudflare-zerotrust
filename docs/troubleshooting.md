# Troubleshooting

## Tunnel Is Connected but Application Fails

Check:

1. Origin application is running
2. Origin address and port are correct
3. HTTP versus HTTPS scheme is correct
4. Connector can reach the origin
5. TLS verification settings are appropriate
6. Ingress order is correct
7. Final catch-all rule exists

## User Cannot Authenticate

Check:

- Approved email or group
- Identity provider
- One-time PIN delivery
- Country requirement
- IP requirement
- Exclude rules
- Policy order
- Session expiration

## Authorized User Is Blocked

Review Include, Require and Exclude logic.

A matching Exclude condition can deny a user even when the user matches Include conditions.

## Origin Works Locally but Not Through Cloudflare

Test:

```bash
curl -I http://192.0.2.20:8080
systemctl status cloudflared
journalctl -u cloudflared -n 100
```

All addresses are examples.

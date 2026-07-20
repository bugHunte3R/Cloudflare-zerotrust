# Access Policies

## Main Rule Types

### Include

Defines the initial eligible identities or requests.

Multiple Include conditions generally behave as OR conditions.

### Require

Adds conditions that all eligible requests must satisfy.

Require rules behave as mandatory conditions.

### Exclude

Removes matching identities or requests from the eligible set.

## Example Policy Design

```text
Policy name: Homelab Administrators
Action: Allow

Include:
- Approved administrator email
- Approved administrator group

Require:
- Approved country
- Approved authentication method

Exclude:
- Disabled account
- Blocked IP address
- High-risk identity
```

## Policy Actions

Common actions include:

- Allow
- Block
- Bypass
- Service Auth

## Policy Review Checklist

- Is the application scope correct?
- Is at least one Include condition present?
- Are Require rules truly mandatory?
- Could an Exclude rule lock out the administrator?
- Is policy ordering correct?
- Is session duration appropriate?
- Is the origin application still protected?
- Has access been tested from an authorized and unauthorized session?

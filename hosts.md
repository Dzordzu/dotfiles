
# hosts 

File HAS TO be located at **`/etc/hosts`**

## Beginning
Every file SHOULD start with the following lines

```
127.0.0.1	localhost
::1		localhost
127.0.1.1	hostname.localdomain	hostname
```

## Address ranges (loopback)

### 127.1.x.x
Contains global apps with fancy hostnames:

| IP | Domain |
| -- | ------ |
| 127.1.0.0 | me.dzordzu |
| 127.1.0.1 | gitlab.dzordzu |
| 127.1.0.2 | redmine.dzordzu |
| 127.1.0.3 | nexus.dzordzu |
| 127.1.0.4 | kimai.dzordzu |
| 127.1.0.5 | icinga.dzordzu |
| 127.1.0.6 | netbox.dzordzu |

### 127.2.x.x
Contains temporary hostnames (for tests, apps that will last 10mins on system, running production (joke) etc.)

### 127.16.x.x - 127.128.x.x
Contains projects hostnames

Mask meanings:

- /16 - project place / general purpose (ex. 127.32.x.x means own projects, 127.33.x.x projects for work etc.)
- /24 - project
- /32 - project hostnames

| IP | Meaning |
| -- | ------- |
| 127.16.0.0/16 - 127.24.0.0/16 | Own Projects |
| 127.25.0.0/16 - 127.28.0.0/16 | Learning Purposes Projects |
| 127.29.0.0/16 - 127.31.0.0/16 | Uni |
| 127.32.0.0/16 | Work |




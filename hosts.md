
# hosts 

File HAS TO be located at **`/etc/hosts`**

## Beginning
Every file SHOULD start with the following lines

```
127.0.0.1	localhost
::1		localhost
127.0.1.1	hostname.localdomain	hostname
```

## Address ranges

### 127.1.x.x
Contains global apps with fancy hostnames

### 127.2.x.x
Contains temporary hostnames (for tests, apps that will last 10mins on system, running production (joke) etc.)

### 127.16.x.x - 127.128.x.x
Contains projects hostnames

Mask meanings:

- /16 - project place / general purpose (ex. 127.32.x.x means own projects, 127.33.x.x projects for work etc.)
- /24 - project
- /32 - project hostnames


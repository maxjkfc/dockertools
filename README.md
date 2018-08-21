# dockertools


## Descirption

## Image Version

|Image|version|source|
|---|---|---|
|cockroach|v2.0.3 | [ cockroachdb/cockroach ](https://hub.docker.com/r/cockroachdb/cockroach/)|
|mongo | 4.0 | [ mongo ](https://hub.docker.com/_/mongo/)|
|mariadb| latest| [mariadb](https://hub.docker.com/___/mariadb) |
|phpmyadmin|latest|[phpmyadmin/phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin)|
|mongo-admin|latest| [mrvautin/adminmongo](https://hub.docker.com/r/mrvautin/adminmongo/)|
|redis| 5.0-rc-alpine |[redis](https://hub.docker.com/_/redis/)|
|redis-cmd| latest| [tenstartups/redis-commander](https://hub.docker.com/r/tenstartups/redis-commander/)|




## tools.sh

```bash
    tools.sh [cmd]

    Available Commands:

        tools.sh cmd   up
        tools.sh cmd   down
        tools.sh exec  [ service  ]

        [service]
            mongo
            cockroach
            redis
```

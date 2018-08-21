# dockertools


## Descirption

## Image Version

|Image|version|source|
|---|:---:|---|
|`cockroach`|v2.0.3 | [ cockroachdb/cockroach ](https://hub.docker.com/r/cockroachdb/cockroach/)|
|`mariadb`| latest| [mariadb](https://hub.docker.com/mariadb) |
|`phpmyadmin`|latest|[phpmyadmin/phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin)|
|`mongo` | 4.0 | [ mongo ](https://hub.docker.com/mongo/)|
|`mongo-admin`|latest| [mrvautin/adminmongo](https://hub.docker.com/r/mrvautin/adminmongo/)|
|`redis`| 5.0-rc-alpine |[redis](https://hub.docker.com/redis/)|
|`redis-cmd`| latest| [tenstartups/redis-commander](https://hub.docker.com/r/tenstartups/redis-commander/)|
|`glances`| latest | [nicolargo/glances](https://hub.docker.com/r/nicolargo/glances/)|


## Port Map

|Service | Ports| |
|---|---|---|
|cockroach|26257| tcp|
|cockroach|8080|http|
|mariadb| 3306| tcp|
|phpmyadmin| 8081 | http|
|mongo| 27017| tcp|
|mongo-admin| 8082| http|
|redis|6379| tcp|
|redis-cmd| 8083| http|
|glances| 61208| http|


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

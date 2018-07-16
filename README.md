# dockertools


## Descirption

## Image Version

|Image|version|source|
|---|---|---|
|cockroach|v2.0.3 | [ cockroachdb/cockroach ](https://hub.docker.com/r/cockroachdb/cockroach/)|
|mongo | 3.6 | [ mongo ](https://hub.docker.com/_/mongo/)|
|mongo-express|0.45| [mongo-express](https://hub.docker.com/r/library/mongo-express/tags/) |
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

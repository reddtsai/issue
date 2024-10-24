Here is a simple flow chart:

```mermaid
flowchart TB
    C[Clients] --> gateway(Gateway)

    subgraph K8s Developer Cluster
        direction TB
        rancherA(Rancher Agent)
        gateway --> authsvc(Auth Service)
        subgraph Auth
            authsvc --> authpod(Auth Pod)
        end
        authpod --> pgpool(pgpool):::db

        gateway --> ordersvc(Unimplemented)
        gateway --> paysvc(Unimplemented)
    end

    subgraph K8s Manager Cluster
        Rancher --> rancherA
    end

    pgpool === |"
    Read-Write Separation
    R/W Primary
    R Standby
    "| PostgreSql:::db

    subgraph PostgreSql
        subgraph Auth DB
            direction TB
            primary(Auth Primary):::db
            primary --> |replica| standby1(Auth Standby 1):::db
            primary --> |replica| standby2(Auth Standby 2):::db
        end
    end

    classDef db fill:#336791,stroke:#333,stroke-width:2px;
```

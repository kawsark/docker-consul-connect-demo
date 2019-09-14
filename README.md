# docker-vault-cluster-demo
Another way to evaluate OSS Vault Cluster with a Consul Cluster backend in HA Mode

![Vault Consul Diagram](/images/docker-layout.png)

## Details to Follow
3 Node Vault Cluster, port mapping via 8200, 9200, 10200 respectively
- Accessible via http://localhost:<port>/ui
- Make sure to unseal each 

5 Node Consul Cluster (Server), load balanced with HAProxy
- Accessible via http://localhost:5300/ui
- HAProxy load balances the port 
- Port 8600 tcp/udp cannot be load balanced with HAProxy, statically exposed in one of the Consul servers 

3 Consul Agents (Clients)
- Mapped 1:1 to the Vault Nodes (1 Vault -> 1 Consul Agent)

## Changelog
07192019:  Telemetry now works, but needs adjustment.  Prometheus + Grafana
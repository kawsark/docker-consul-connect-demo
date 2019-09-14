server = false
data_dir = "/etc/consul/data"
encrypt = "zF7Y1xYkJ7T4X4Xk/7hm8A=="
datacenter = "dc1"
client_addr = "0.0.0.0"
bootstrap_expect = 0
log_level = "INFO"
acl_enforce_version_8 = false
retry_join = ["consul_s1", "consul_s2", "consul_s3"]
ui = true
enable_script_checks = true
performance {
    raft_multiplier = 1
}

telemetry {
    prometheus_retention_time = "30s",
    disable_hostname = true    
}
server = true
data_dir = "/etc/consul/data"
encrypt = "YZqGRaEajsh8M1w4e1z/Jg=="
datacenter = "us-central1"
client_addr = "0.0.0.0"
bootstrap_expect = 1
log_level = "info"
# log_file = "/etc/consul/logs/consul.log"
# enable_syslog = true
acl_enforce_version_8 = false
#retry_join = ["consul_s1", "consul_s2", "consul_s3"]
retry_join = ["consul_s1"]
retry_join_wan = ["35.231.14.101","35.196.213.6","35.196.182.145"]
ui = true
enable_script_checks = true
performance {
    raft_multiplier = 1
}
telemetry {
    prometheus_retention_time = "30s",
    disable_hostname = true
}
connect {
    enabled = true
}

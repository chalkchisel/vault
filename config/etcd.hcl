backend "etcd" {
  address = "http://192.168.0.4:4001"
  path = "fs-vault/"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}

disable_mlock = true

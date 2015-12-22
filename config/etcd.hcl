backend "etcd" {
  address = "http://192.168.0.4:2379,http://192.168.0.5:2379,http://192.168.0.6:2379"
  path = "fs-vault/"
  advertise_addr = "http://127.0.0.1:8200"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}

disable_mlock = true

backend "etcd" {
  address = "%ETCD_ADDRESSES%"
  path = "fs-vault/"
  advertise_addr = "http://%MY_POD_IP%:8200"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}

disable_mlock = true

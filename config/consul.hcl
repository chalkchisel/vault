backend "consul" {
  address = "localhost:8500"
  path = "fs-vault"
  advertise_addr = "127.0.0.1"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}

disable_mlock = true

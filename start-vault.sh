#!/bin/sh

sed -e "s/%ETCD_ADDRESSES%/$ETCD_ADDRESSES/g" \
    -e "s/%MY_POD_IP%/$MY_POD_IP/g" \
    "/config/etcd.template.hcl" > "/config/etcd.hcl"

/bin/vault server -config=/config/etcd.hcl

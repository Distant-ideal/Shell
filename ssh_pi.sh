#!/bin/bash

for i in `seq 41 49`; do
    scp id_rsa.pub G@192.168.2.$i:~/authorized_keys
    ssh G@192.168.2.$i mkdir .ssh
    ssh G@192.168.2.$i mv authorized_keys .ssh
done

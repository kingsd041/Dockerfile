#!/bin/bash
db_domain_name=mysql
dns_ip=192.168.1.28
dns_port=2379
crd_name=mysql

while true :
do
    ip=$(/usr/local/bin/kubectl --kubeconfig /var/lib/rancher/cube/kube_config_rke_config.yml get virtualmachines.vm.rancher.com ${crd_name} -o yaml | grep 'ip:' | grep -v "node_ip" | awk '{print $2}')
    if [[ $ip  =~ "192" ]]; then
        echo "Get mysql ip: ${ip}"
        curl -XPUT http://${dns_ip}:${dns_port}/v2/keys/rdns/internal/rancher/sy/default/${db_domain_name} -d value="{\"host\":\"${ip}\"}"
        break
    else
        echo "Getting mysql ip address..."
        sleep 2
    fi
done

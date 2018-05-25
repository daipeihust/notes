首先查看自己的网卡名称
```shell
ip link
```

进入netctl目录
```shell
cd /etc/netctl
```

复制一份网络配置文件
```shell
cp /example/ethernet-dhcp my-network-dhcp
```

编辑该配置文件，将网卡改为自己的网卡名称
```
Interface=enp0s3
```

启动该配置文件

```shell
netctl enable my-network-dhcp
```

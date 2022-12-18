# dockerized snx client with cshell

## prereq

- docker compose
- make

Two files are required and can be downloaded from vpn server (stored in ./setup):

- snx_install.sh
- cshell_install.sh

```
scripts/download.sh <url_vpn_server>
```

Copy env.sample to .env

Create file /etc/sudoers.d/snx (set wheel or sudo group)

```
%wheel ALL=(ALL:ALL) NOPASSWD: /usr/bin/ip
```

## build docker image

```
make build
```

## run vpn

```
make run
```

Close firefox to close vpn

## reset

Firefox settings are stored in ./firefox folder, reset it to reload environment.

```
make reset
```

## introspection

Check cshell on https://localhost:14186/id

Add routing behind vpn client

```
source .env
sudo ip r add <net> via ${LOCAL_IP}
```

## TODO

DNS ?

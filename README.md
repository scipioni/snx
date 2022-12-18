# dockerized snx client with cshell

## prereq

Two files are required and can be downloaded from vpn server (stored in ./setup):

- snx_install.sh
- cshell_install.sh

```
./download.sh <url_vpn_server>
```

copy env.sample to .env

## build docker image

```
make build

or

docker compose build
```

## run vpn

```
make run

or 

docker compose up
```

Firefox is opened on https://localhost:14186/id page. This page has self signed certificate that has to be accepted ('advanced' link and 'accept risk and continue' button)

Open url of vpn server, login and connect accepting all dialogs.


Add routing behind vpn client
```
source .env
sudo ip r add <net> via ${LOCAL_IP}
```

Close firefox to close vpn

## reset

Firefox settings are stored in ./firefox folder, reset it to reload environment. I like to set firefox "open previous windows and tabs" to restore vpn server page.

```
make reset
```
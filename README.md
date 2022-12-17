# snx client dockerized

## prereq 

Two files are required and can be downloaded from vpn server:
- snx_install.sh
- cshell_install.sh

```
./download.sh <url_vpn_server>
```

## build 

```
docker compose build
```


## run

```
docker compose up
```

Firefox is opened on https://localhost:14186/id page. This page has self signed certificate that has to be accepted ('advanced' link and 'accept risk and continue' button)

After open url of vpn server, login and connect accepting all dialogs. 


Firefox settings are stored in ./firefox folder, reset it to reload environment. I like to set firefox "open previous windows and tabs" to restore vpn server page.
# [RandomNinjaAtk/locast2tuner](https://github.com/RandomNinjaAtk/docker-locast2tuner)
[![Docker Build](https://img.shields.io/docker/cloud/automated/randomninjaatk/locast2dvr?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2tuner)
[![Docker Pulls](https://img.shields.io/docker/pulls/randomninjaatk/locast2tuner?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2tuner)
[![Docker Stars](https://img.shields.io/docker/stars/randomninjaatk/locast2tuner?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2tuner)
[![Docker Hub](https://img.shields.io/badge/Open%20On-DockerHub-blue?style=flat-square)](https://hub.docker.com/r/randomninjaatk/locast2tuner)
[![Discord](https://img.shields.io/discord/747100476775858276.svg?style=flat-square&label=Discord&logo=discord)](https://discord.gg/JumQXDc "realtime support / chat with the community." )

[locast2tuner](https://github.com/wouterdebie/locast2tuner) - This application provides an interface between locast.org and Plex Media Server (PMS) or Emby by acting like a HDHomerun or an m3u Tuner and an XMLTV provider.

[![locast2tuner](https://raw.githubusercontent.com/RandomNinjaAtk/unraid-templates/master/randomninjaatk/img/locast2dvr.png)](https://github.com/wouterdebie/locast2tuner)

## Supported Architectures

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |

## Version Tags

| Tag | Description |
| :----: | --- |
| latest | LSIO Ubuntu Focal + Rust + locast2tuner |

## Parameters

Container images are configured using the following parameters passed at runtime.

| Parameter | Function |
| ---- | --- |
| `-e L2DHOSTIP=###.###.###.###` | Host IP Address, set to the host ip address |
| `-e L2DUSER="username"` | Locast Username |
| `-e L2DPASS="password"` | Locast Password |
| `-e L2DZIP=#####,#####` | Locast Zipcodes, zipcode in format: #####,#####,##### |

### docker
Don't use quotation marks in the environmental variables.

```
docker create \
  --name=locast2dvr \
  --network host \
  -e L2DHOSTIP=###.###.###.### \
  -e L2DUSER=username \
  -e L2DPASS=password \
  -e L2DZIP=#####,##### \
  randomninjaatk/locast2dvr 
```


### docker-compose

Compatible with docker-compose v2 schemas. Don't use quotation marks in the environmental variables.

```
version: "2.1"
services:
  locast2dvr:
    image: randomninjaatk/locast2dvr 
    container_name: locast2dvr
    network_mode: host
    environment:
      - L2DHOSTIP=###.###.###.###
      - L2DUSER=username
      - L2DPASS=password
      - L2DZIP=#####,#####
    restart: unless-stopped
```

<br />
<br />
<br />

# Credits
- [locast2dvr](https://github.com/wouterdebie/locast2tuner)

# REVSHELL

A reverse shell docker image and server script for use during testing

## Getting started

### Server

The revshell server simply runs `socat` as a listener and waits for a connection from the Internet

#### Requirements

* socat e.g. `apt install socat`
* must be internet accessible
* inboud firewall rule for whichever port you choose

#### Launching the server

The server can be launched by providing a port to the `revshellsrv.sh` script

```bash
./revshellsrv.sh 1337
```

### Docker

The revshell docker image contains a number of tools to help with network discovery.

#### Installed tools

* curl
* nmap
* awscli

**Note** more tools can be installed by editing the `Dockerfile`

#### Running the container

The container can be run at the command line or with any orchestration tool. The `docker-entrypoint` expects a `host:port` combination as the Docker `CMD`

```bash
docker run bhendo/revshell example.com:1337
```




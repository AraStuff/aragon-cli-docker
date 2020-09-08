# aragon-cli-docker
Setting up an environment to use the aragonCLI can be tricky. This repo contains instructions for spinning up a docker container with the aragonCLI and all the necessary dependencies installed. The image comes set up with a development seed and infura key for quick hacking

<br>

##  ✅ Prerequisites
[docker](https://docs.docker.com/get-docker/) 

<br>

##  🏁 Quick Start

First pull the docker image

```
docker pull pythonpete32/aragon-cli:1.2
```

Find the `IMAGE ID` by running 

```
docker images
```

then run launch a docker container with an interactive terminal

```
docker run -it <IMAGE_ID> /bin/bash
```

<br>

##  💻 Configuration

* Seed
The image comes with a development seed preconfigured. If you want to use your own, simply edit the `mnemonic.json` file 

```
vim ~/.aragon/mnemonic.json
```

<br>

##  ⛑ Help

If you have questions or need help please drop into the Aragon [Discord](https://discord.com/invite/remTh8w) support channel!

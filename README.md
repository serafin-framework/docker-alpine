# Alpine Linux base image

[`serafinlabs/alpine`](https://hub.docker.com/r/serafinlabs/alpine/)

An [Alpine Linux](https://alpinelinux.org/) base image, with  ready to install developer tools
including zsh with a developer setup.

## Usage

### To build the image:
    
    docker build Dockerfile

### To run the image, with a *sh* command

    docker run -ti --rm serafinframework/alpine bash

## Commands

### install-devtools.sh
The image includes the executable */opt/install-devtools.sh*, which can be used
when building a subsequent Docker image to install the following tools:
- zsh (with a pre-defined development configuration)
- bash, screen, man, zip, wget, vim, nano, git, subversion, less, htop

### startup-timezone.sh
The image includes the executable */opt/startup-timezone.sh*, which can be used
at runtime to set the container timezone.

*Example*

    /var/opt/startup-timezone.sh America/Montreal

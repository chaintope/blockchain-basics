# Blockchain Basics

## Setup

### Windows 10 Pro

#### Install Docker for Windows

Download **Docker for Windows** from following link and install it.

https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows

Use *stable channel* if you do not want to get experimental features of Docker.

Docker for Windows requires leaving enable Microsoft Hyper-V to run. So if you do not want to enable Hyper-V, please follow the instruction for other Windows 10 Home.

Open **Docker for Windows** for initial setup. Once setup is finished, you can use Docker commands from you favorite shell (`cmd.exe`, PowerShell, or other) as follows.

```
Under Construction
```

#### Install Git

Download from following link and install it.

https://git-scm.com/downloads

    
### Windows 10 Home or earlier 

#### Install Docker Toolbox for Windows

Download **Docker Toolbox for Windows** from following link and install it.

https://docs.docker.com/toolbox/overview/

Since Docker Toolbox for Windows uses VirtualBox internally, it cannot runs under keeping Microsoft Hyper-V is enabled.

Open **Docker Quickstart Terminal** in start menu. At the initial startup, settings such as boot2docker will be done automatically, so please follow the instructions on the terminal.

Once MinGW has been started, you can use docker commands on the terminal as follows.

```
$ docker version
Client:
 Version:       18.02.0-ce
 API version:   1.35 (downgraded from 1.36)
 Go version:    go1.9.4
 Git commit:    fc4de447b5
 Built: Mon Feb 12 19:03:38 2018
 OS/Arch:       windows/amd64
 Experimental:  false
 Orchestrator:  swarm

Server:
 Engine:
  Version:      17.12.1-ce
  API version:  1.35 (minimum version 1.12)
  Go version:   go1.9.4
  Git commit:   7390fc6
  Built:        Tue Feb 27 22:20:43 2018
  OS/Arch:      linux/amd64
  Experimental: false
```

If you want to use your favorite shell(`cmd.exe`, PowerShell, or others), you have to setup environment variables using `docke-machine env` command. See below link.

https://docs.docker.com/machine/reference/env/

#### Install Git

Scince Git has already installed on Docker Quickstart Terminal, you do not need to install Git.

### Mac

#### Install Docker for Mac

Download **Docker for Mac** from following link and install it.

https://docs.docker.com/toolbox/overview/

If you have been using Homebrew, you can get it by Homebrew Cask.

    $ brew cask install Docker
    
Open `~/Applicaion/Docker.app` for initial setup. Once setup is finished, you can use Docker commands from terminal as follows.

```
$ docker version
Client:
 Version:	17.12.0-ce
 API version:	1.35
 Go version:	go1.9.2
 Git commit:	c97c6d6
 Built:	Wed Dec 27 20:03:51 2017
 OS/Arch:	darwin/amd64

Server:
 Engine:
  Version:	17.12.0-ce
  API version:	1.35 (minimum version 1.12)
  Go version:	go1.9.2
  Git commit:	c97c6d6
  Built:	Wed Dec 27 20:12:29 2017
  OS/Arch:	linux/amd64
  Experimental:	true
```

#### Install Git

Download from following link and install it.

https://git-scm.com/downloads

Also you can get it using Homebrew.

    $ brew install git
    
## Quickstart

1. Clone this repository on proper directory.

        $ git clone https://github.com/chaintope/blockchain-basics.git

2. Launch `bitcoind` and `bitcore`.

        $ cd blockchain-Basics
        $ docker-compose up -d

3. See your own Blockchain through Insight running on following URL.

  * Docker for Windows, Docker for machine
     
    http://localhost:3001/insight/
    
  * Install Docker Toolbox for Windows
      
      Obtain ip address of corresponding VirtualBox machine first.
      
          $ docker-machine ip
          192.168.99.100

      Insight is runnning on port 3001 in this machine.
      
      http://192.168.99.100:3001/insight/

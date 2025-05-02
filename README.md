# .NET + SSH Service #

This [container](https://hub.docker.com/repository/docker/iberisoft/ssh-dotnet) can be used to deploy/run/debug .NET applications in Docker containers on a local/remote host.

## Deployment ##

Run the container on a host:
```
docker run -d -p 2222:22 -e DEVUSER_PASSWORD=your-strong-password iberisoft/ssh-dotnet
```

Now you can connect to the container from the same or another host via the SSH port 2222 by entering devuser/your-strong-password credentials.

## VS Code ##

Open the VS Code on the same or another host. Install [Remote - SSH](https://marketplace.visualstudio.com/items/?itemName=ms-vscode-remote.remote-ssh) extention, the `Remote Explorer` tab should appear.
Click `New Remote` and enter `ssh devuser@container-host -p 2222`. Connect to the container, enter its SSH password. Now you can remotely do all VS Code actions inside the container.
For example, you can open terminals in the container or go to the `Extensions` tab and install some VS Code extentions in the container,
e.g. [C# Dev Kit](https://marketplace.visualstudio.com/items/?itemName=ms-dotnettools.csdevkit), [GitLens — Git supercharged](https://marketplace.visualstudio.com/items/?itemName=eamodio.gitlens).
You can open existing folders, clone Git repositories, create .NET projects, etc. inside the container.

Install Git manually if you want to work with Git repositories via a terminal:
```
sudo apt install -y git
```

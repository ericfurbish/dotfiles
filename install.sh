#!/bin/bash
env
cat ~/.dotfiles/.bashrc >> ~/.bashrc
SESSIONID=`ls /home/genero/.vscode-server/bin`
/home/genero/.vscode-server/bin/$SESSIONID/server.sh --extensions-download-dir /home/genero/.vscode-server/extensionsCache --install-extension ms-kubernetes-tools.vscode-kubernetes-tools --force

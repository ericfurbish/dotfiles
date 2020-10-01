#!/bin/bash
env
cat ~/.dotfiles/.bashrc >> ~/.bashrc

function installExtension()
{
  SESSIONID=`ls $HOME/.vscode-server/bin`
  $HOME/.vscode-server/bin/$SESSIONID/server.sh --extensions-download-dir $HOME/.vscode-server/extensionsCache --install-extension $1 --force
  EXTENSION=`ls $HOME/.vscode-server/extensionsCache/$1-*`
  EXTENSION=`basename $EXTENSION`
  mkdir /tmp/$EXTENSION
  unzip -qq $HOME/.vscode-server/extensionsCache/$EXTENSION extension/* -d /tmp/$EXTENSION
  mkdir -p $HOME/.vscode-server/extensions
  mv /tmp/$EXTENSION/extension/ $HOME/.vscode-server/extensions/$EXTENSION
}

installExtension ms-kubernetes-tools.vscode-kubernetes-tools
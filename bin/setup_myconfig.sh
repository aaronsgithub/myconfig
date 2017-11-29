#!/usr/bin/env bash

function config {
  /usr/bin/git --git-dir=$HOME/.myconfig --work-tree=$HOME $@
}

echo "Cloning https://github.com/aaronsgithub/myconfig.git"

git clone --bare https://github.com/aaronsgithub/myconfig.git $HOME/.myconfig

config checkout

if [ $? = 0 ]; then
  echo "Checked out config.";
else
  mkdir -p ~/.config-backup
  echo "Backing up pre-existing config files."
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} ~/.config-backup/{}
fi

config checkout
config config status.showUntrackedFiles no


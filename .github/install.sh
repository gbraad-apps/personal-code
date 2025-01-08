#!/bin/sh

# clean workspace folder
rm -rf /workspaces/personal-code
mkdir /workspaces/personal-code
ln -s /workspaces/personal-code ~/Projects
git init /workspaces/personal-code

cd ~

exit 0
#!/bin/sh

# install server if it doesn't exist
if [ ! -f "server/start.sh" ]; then
  # make and move to server/
  mkdir server && cd server/
  # download the server install file
  wget -O serverinstall_35_2129 https://api.modpacks.ch/public/modpack/35/2129/server/linux

  # give permission to execute installer
  chmod +x serverinstall_35_2129

  # run the installer
  ./serverinstall_35_2129

  # give permission to start script
  chmod +x /start.sh
fi

# run the server
./start.sh

#!/bin/sh

# install server if it doesn't exist
if [ ! -f "server/start.sh" ]; then
  
  cd server
  # download the server install file
  wget -O serverinstall_35_2129 https://api.modpacks.ch/public/modpack/35/2129/server/linux

  # give permission to execute installer
  chmod +x serverinstall_35_2129

  # run the installer
  ./serverinstall_35_2129
  cd ../

  # give permission to start script
  chmod +x server/start.sh
fi

# run the server
cd server

./start.sh

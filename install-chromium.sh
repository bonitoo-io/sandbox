#!/bin/bash

if ! chromium-browser --version; then 
   echo "Installing latest chromium-browser"
   sudo apt-get update
   sudo apt-get install chromium-browser
fi


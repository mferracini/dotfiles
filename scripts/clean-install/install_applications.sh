#!/bin/bash

sudo apt-get update

echo $PWD
cat ./applications/applications.list | xargs sudo apt-get -y install

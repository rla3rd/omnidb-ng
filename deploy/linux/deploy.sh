#!/bin/bash

docker run -e VERSION="3.0.6" -v $PWD:/tmp --rm omnidb/tarbuild
docker run -e VERSION="3.0.6" -v $PWD:/tmp --rm omnidb/pkgbuild

sudo chown $USER:$USER *.tar.gz
sudo chown $USER:$USER *.deb
sudo chown $USER:$USER *.rpm

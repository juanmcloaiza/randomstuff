#!/bin/bash

##Create checksums file
cd pkg-debian
find . -type f ! -regex '.*.hg.*' ! -regex '.*?debian-binary.*' ! -regex '.*?DEBIAN.*' -printf '%P ' | xargs md5sum > DEBIAN/md5sums
cd ..

##Create deb package
dpkg -b pkg-debian my_package.deb

##Install the package just created
sudo apt install ./my_package.deb

##Remove .deb
rm my_package.deb

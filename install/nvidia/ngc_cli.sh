#!/bin/bash

# Install NVIDIA's NGC CLI

wget --content-disposition https://api.ngc.nvidia.com/v2/resources/nvidia/ngc-apps/ngc_cli/versions/3.47.0/files/ngccli_linux.zip -O ngccli_linux.zip && unzip ngccli_linux.zip

find ngc-cli/ -type f -exec md5sum {} + | LC_ALL=C sort | md5sum -c ngc-cli.md5

sha256sum ngccli_linux.zip

chmod u+x ngc-cli/ngc
echo "export PATH=\"\$PATH:$(pwd)/ngc-cli\"" >> ~/.bash_profile && source ~/.bash_profile

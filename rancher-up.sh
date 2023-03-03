dnf install -y podman skopeo buildah ansible python3-pip python
sudo dnf install podman python38 -y
sudo dnf install python38-pip -y
pip3 install ansible-builder==1.0.1 --user
pip3 install ansible-navigator==1.0.0 --user
#python3.8 -m pip3 install ansible-builder==1.0.1 --user
#python3.8 -m pip3 install ansible-navigator==1.0.0 --user
#

#!/usr/bin/bash

podman run -d --restart=unless-stopped -p 8888:80 -p 8843:443 --privileged docker.io/rancher/rancher:latest

conid=$(podman ps  | grep rancher | awk '{print $1}')

echo $conid

echo 'podman logs  -f $conid  2>&1 | grep "Bootstrap Password:"'


#!/bin/bash
set -euo pipefail

ID=`docker run -dti \
  --privileged --ipc host \
  -v "${PWD}"/work:/opt/docker-fpga/work \
  -e USER_UID=$(id -u) \
  -e USER_GID=$(id -g) \
  -e USER_NAME="${USER}" \
  -w /opt/docker-fpga \
  diamond:latest \
  /opt/docker-fpga/install.sh`

docker attach "${ID}"
docker commit "${ID}" diamond:install

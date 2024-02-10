#!/bin/bash
set -euo pipefail

ID=`docker run -dti -e DISPLAY="${DISPLAY}" \
  --privileged --ipc host \
  -v "${PWD}"/work:/opt/docker-fpga/work \
  -v /etc/machine-id:/etc/machine-id \
  -v /tmp/.X11-unix/:/tmp/.X11-unix \
  -e USER_UID=$(id -u) \
  -e USER_GID=$(id -g) \
  -e USER_NAME="${USER}" \
  -w /opt/docker-fpga \
  icecube2:latest \
  /opt/docker-fpga/install.sh`

echo Instructions:
echo - choose /opt/docker-fpga/icecube2 as the installation directory, ignoring the warning about the directory already existing
echo - skip the license file selection
echo - uncheck the box \"Launch iCEcube2 now\".

docker attach "${ID}"
docker commit "${ID}" icecube2:"${USER}"

#!/bin/bash
set -euo pipefail

PODMAN_OPTIONS=$(docker --version | grep -q ^podman && echo -n "--network=bridge")

NET_DEVICE=`ip route show default | awk '{print $5}'`
MAC_ADDRESS=`cat /sys/class/net/"${NET_DEVICE}"/address`

ID=`docker run -dit -e DISPLAY="${DISPLAY}" \
  $PODMAN_OPTIONS \
  --mac-address="${MAC_ADDRESS}" \
  --privileged --ipc host \
  -v docker-fpga-${USER}:"${HOME}" \
  -v /etc/machine-id:/etc/machine-id \
  -v /dev/bus/usb/:/dev/bus/usb/ \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -e XAUTHORITY=/tmp/.Xauthority \
  -v "${XAUTHORITY:-$HOME/.Xauthority}":/tmp/.Xauthority:ro \
  -v "${HOME}":"${HOME}"/home \
  -e MOZ_NO_REMOTE=1 \
  -u root \
  icecube2:"${USER}" \
  /bin/bash`

docker attach "${ID}"

read -r -p "Commit changes to image? (type y to continue): "
if [[ $REPLY =~ ^[Yy]$ ]]
then
  docker commit "${ID}" icecube2:"${USER}"
fi

#!/bin/bash
set -euo pipefail

NET_DEVICE=`ip route show default | awk '{print $5}'`
MAC_ADDRESS=`cat /sys/class/net/"${NET_DEVICE}"/address`

docker run -it --rm -e DISPLAY="${DISPLAY}" \
  --mac-address="${MAC_ADDRESS}" \
  --privileged --ipc host \
  -v "${HOME}":"${HOME}" \
  -v /etc/machine-id:/etc/machine-id \
  -v /dev/bus/usb/:/dev/bus/usb/ \
  -v /tmp/.X11-unix/:/tmp/.X11-unix \
  -u "${USER}" \
  -w "${HOME}" \
  diamond:install \
  /bin/bash -c /opt/docker-fpga/run.sh

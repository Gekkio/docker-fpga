#!/bin/bash
set -euo pipefail

groupadd -g "${USER_GID}" "${USER_NAME}"
adduser -u "${USER_UID}" -g "${USER_GID}" "${USER_NAME}"

mkdir /opt/docker-fpga/icecube2
chown "${USER_UID}":"${USER_GID}" /opt/docker-fpga/icecube2
cp /opt/docker-fpga/work/license.dat /opt/docker-fpga/icecube2/license.dat

su "${USER_NAME}" -c /opt/docker-fpga/work/iCEcube2setup_Dec_10_2020_2012

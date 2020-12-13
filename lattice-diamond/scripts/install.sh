#!/bin/bash
set -euo pipefail

rpm -i /opt/docker-fpga/work/diamond_3_12-base-240-2-x86_64-linux.rpm
cp /opt/docker-fpga/work/license.dat /usr/local/diamond/3.12/license/license.dat

groupadd -g "${USER_GID}" "${USER_NAME}"
adduser -u "${USER_UID}" -g "${USER_GID}" "${USER_NAME}"

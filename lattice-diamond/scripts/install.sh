#!/bin/bash
set -euo pipefail

rpm -i /opt/docker-fpga/work/diamond_3_10-base_x64-111-2-x86_64-linux.rpm
rpm -i /opt/docker-fpga/work/diamond_3_10-sp3_x64-144-3-x86_64-linux.rpm
cp /opt/docker-fpga/work/license.dat /usr/local/diamond/3.10_x64/license/license.dat

groupadd -g "${USER_GID}" "${USER_NAME}"
adduser -u "${USER_UID}" -g "${USER_GID}" "${USER_NAME}"

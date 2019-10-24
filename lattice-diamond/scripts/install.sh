#!/bin/bash
set -euo pipefail

rpm -i /opt/docker-fpga/work/diamond_3_11-base_x64-396-4-x86_64-linux.rpm
rpm -i /opt/docker-fpga/work/diamond_3_11-sp1_x64-441-0-x86_64-linux.rpm
cp /opt/docker-fpga/work/license.dat /usr/local/diamond/3.11_x64/license/license.dat

groupadd -g "${USER_GID}" "${USER_NAME}"
adduser -u "${USER_UID}" -g "${USER_GID}" "${USER_NAME}"

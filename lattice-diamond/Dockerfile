FROM centos

# First yum install handles all dependencies listed in the Lattice Diamond 3.10
# installation guide
# Second yum install handles all dependencies *not listed* in the guide, but which
# are absolutely required for Diamond to work...
RUN yum update -y && \
  yum install -y glibc nss-softokn-freebl libjpeg libtiff zlib glib2 libselinux \
    gamin libusb freetype fontconfig expat libX11 libxcb libXau libICE libSM \
    libuuid libXt libXext libXrender libXi libXft && \
  yum install -y perl tcsh libXScrnSaver && \
  yum install -y firefox evince && \
  yum clean all -y

COPY scripts/install.sh scripts/run.sh /opt/docker-fpga/

FROM rockylinux:8

# Source: Lattice Diamond 3.13 installation guide
# First yum install adds all dependencies listed in the guide
# Second yum install adds all 32-bit dependencies for ModelSim listed in the guide
# Third yum install adds all dependencies *not listed* in the guide, but which
# are absolutely required for Diamond to work...
RUN yum update -y && \
  yum install -y glibc nss-softokn-freebl libjpeg libtiff zlib glib2 libselinux \
    gamin libusb freetype fontconfig expat libX11 libxcb libXau libICE libSM \
    libuuid libXt libXext libXrender libXi libXft && \
  yum install -y bzip2-libs.i686 expat.i686 fontconfig.i686 freetype.i686 \
    ncurses-libs.i686 nss-softokn-freebl.i686 zlib.i686 \
    libXft.i686 libXrender.i686 libpng.i686 libuuid.i686 libX11.i686 \
    libXau.i686 libxcb.i686 libXext.i686 && \
  yum install -y perl tcsh libXScrnSaver && \
  yum install -y firefox && \
  yum clean all -y

COPY scripts/install.sh scripts/run.sh /opt/docker-fpga/

FROM rockylinux:8

RUN yum update -y && \
  yum install -y glibc.i686 zlib.i686 glib2.i686 \
    freetype.i686 fontconfig.i686 expat.i686 libX11.i686 libICE.i686 libSM.i686 \
    libuuid.i686 libXext.i686 libXrender.i686 libXi.i686 \
    libXcursor.i686 libXfixes.i686 libXinerama.i686 libXrandr.i686 libpng12.i686 libpng15.i686 \
    libstdc++.i686 libnsl.i686 \
    elfutils-libelf.i686 && \
  yum install -y perl tcsh && \
  yum install -y firefox && \
  yum clean all -y

COPY scripts/install.sh scripts/run.sh /opt/docker-fpga/

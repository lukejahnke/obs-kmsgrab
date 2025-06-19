FROM fedora:42

RUN dnf install -y @c-development cmake ninja obs-studio-devel libdrm-devel redhat-rpm-config libxcb-devel

ADD . /obs-kmsgrab/

WORKDIR /obs-kmsgrab/

RUN cmake . -GNinja -DCMAKE_INSTALL_PREFIX=/usr -DENABLE_POLKIT=NO && ninja

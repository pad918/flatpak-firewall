#!/bin/bash


#git submodule update --init

#meson setup \
#  --prefix=/opt/flatpak-firewall \
#  --sysconfdir=/etc \
#  --localstatedir=/var \
#  -Dsystem_install_dir=/var/lib/flatpak \
#  -Dinstalled_tests=true \
#  -Dselinux_module=disabled \
#  -Dsystem_dbus_proxy=xdg-dbus-proxy \
#  -Dgtkdoc=disabled \
#  _build

meson compile -C _build

#meson test -C _build

sudo meson install -C _build
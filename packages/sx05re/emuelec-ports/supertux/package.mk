# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2021-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="supertux"
PKG_VERSION="37cddf24a4abfdec7931a84afd9e87fb8ea18767" #v0.6.3
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/SuperTux/supertux"
PKG_URL="file://${ROOT}/sources/supertux/supertux-${PKG_VERSION}.tar.gz"
PKG_SHA256="8c54c8569a71468c151e97304a55721f38a037fefae3a46c046109fa6244d113"
PKG_SOURCE_DIR="supertux-37cddf24a4abfdec7931a84afd9e87fb8ea18767"
PKG_DEPENDS_TARGET="toolchain SDL2 boost"
PKG_LONGDESC="Run and jump through multiple worlds, fighting off enemies by jumping on them, bumping them from below or tossing objects at them, grabbing power-ups and other stuff on the way."
GET_HANDLER_SUPPORT="file"

pre_configure_target() {
cat > ${PKG_BUILD}/version.cmake <<VERSIONEOF
SET(SUPERTUX_VERSION_MAJOR 0)
SET(SUPERTUX_VERSION_MINOR 6)
SET(SUPERTUX_VERSION_PATCH 3)
SET(SUPERTUX_VERSION_TWEAK 0)
SET(SUPERTUX_VERSION_STRING "0.6.3")
SET(SUPERTUX_VERSION_BUILD 0)
VERSIONEOF
PKG_CMAKE_OPTS_TARGET+=" -DENABLE_OPENGL=ON -DENABLE_OPENGLES2=ON -DBUILD_DOCUMENTATION=OFF -DENABLE_DISCORD=Off -DCMAKE_BUILD_TYPE=Release -DIS_SUPERTUX_RELEASE=ON -DBoost_NO_BOOST_CMAKE=ON" 
}

makeinstall_target() {
mkdir -p ${INSTALL}/usr/bin
cp ${PKG_BUILD}/.${TARGET_NAME}/supertux2 ${INSTALL}/usr/bin/
cp ${PKG_DIR}/scripts/* ${INSTALL}/usr/bin

mkdir -p ${INSTALL}/usr/config/emuelec/configs/supertux2
cp ${PKG_DIR}/config/* ${INSTALL}/usr/config/emuelec/configs/supertux2
}

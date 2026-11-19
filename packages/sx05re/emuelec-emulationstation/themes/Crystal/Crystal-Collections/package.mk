# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="Crystal-Collections"
PKG_VERSION="ac3311290ecf19a272535d2a9566ec58b8fdd3e8"
PKG_SHA256="909cf5fab559edf1cdb12fa3d4c65723ff226b126fcfc048d2017a808c49f73e"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/dm2912/Crystal-Collections"
PKG_URL="file://${ROOT}/sources/Crystal-Collections/Crystal-Collections-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="emuelec"
PKG_SHORTDESC="Crystal Dynamic Collections for use on the Crystal Theme"
PKG_TOOLCHAIN="manual"
GET_HANDLER_SUPPORT="file"

make_target() {
  : not
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/config/emulationstation/collections
  cp -r *.xcc ${INSTALL}/usr/config/emulationstation/collections
}

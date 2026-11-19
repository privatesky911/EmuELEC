# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2020-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="tic-80"
PKG_VERSION="f83a769e63783aac848cb1084450064c16ce0b83"
PKG_SHA256="1bb06f79aff03c08d6d2a31545fe313a24b3fdfdf292d52fd521257e241858fe"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/nesbox/TIC-80"
PKG_URL="file://${ROOT}/sources/tic-80/tic-80-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="TIC-80 is a fantasy computer for making, playing and sharing tiny games."
GET_HANDLER_SUPPORT="file"

PKG_CMAKE_OPTS_TARGET="-DBUILD_LIBRETRO=ON                        -DBUILD_PLAYER=OFF                        -DBUILD_DEMO_CARTS=OFF                        -DBUILD_SOKOL=OFF                        -DBUILD_SDL=OFF                        -DBUILD_WITH_MRUBY=OFF                        -DBUILD_WITH_JANET=OFF                        -DBUILD_WITH_JS=OFF                        -DBUILD_WITH_MOON=OFF                        -DBUILD_WITH_FENNEL=OFF                        -DBUILD_WITH_SQUIRREL=OFF                        -DBUILD_WITH_PYTHON=OFF                        -DBUILD_WITH_WREN=OFF                        -DBUILD_WITH_WASM=OFF                        -DBUILD_WITH_SCHEME=OFF                        -DCMAKE_BUILD_TYPE=Release"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp ${PKG_BUILD}/.${TARGET_NAME}/lib/tic80_libretro.so ${INSTALL}/usr/lib/libretro/tic80_libretro.so
}

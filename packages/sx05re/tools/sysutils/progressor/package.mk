# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="progressor"
PKG_VERSION="151f47a07b13cb37faf3e9a144691f44c7370161"
PKG_LICENSE="GPL-2.0"
PKG_SITE="https://github.com/JohnnyonFlame/progressor"
PKG_URL="file://${ROOT}/sources/progressor/progressor-${PKG_VERSION}.tar.gz"
PKG_SHA256="e2c7f6f2f5ff83fab51d25260d8182ee18740a0463f6433ed1abfb0c58c12aae"
PKG_SOURCE_DIR="progressor-${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain SDL2"
PKG_SHORTDESC="Simple ImGui application to display patching progress and queries."
PKG_TOOLCHAIN="cmake"
GET_HANDLER_SUPPORT="file"

makeinstall_target(){
mkdir -p ${INSTALL}/usr/bin
cp progressor ${INSTALL}/usr/bin
}

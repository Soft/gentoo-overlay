# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 toolchain-funcs

DESCRIPTION="Set of window manipulation tools"
HOMEPAGE="https://github.com/wmutils/core"
SRC_URI=""
EGIT_REPO_URI="https://github.com/wmutils/core.git"
LICENSE="ISC"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/libxcb"
RDEPEND="${DEPEND}"

src_prepare() {
    tc-export CC
    cp "${FILESDIR}/config.mk" "${S}/config.mk"
}

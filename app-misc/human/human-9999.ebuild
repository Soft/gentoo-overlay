# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 toolchain-funcs

DESCRIPTION="convert bytes to human readable formats"
HOMEPAGE="http://git.2f30.org/human/"
SRC_URI=""
EGIT_REPO_URI="git://git.2f30.org/human"
LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "s/^\(\s\+\)@/\1/g" Makefile || die "sed failed"
	sed -i "/^\s\+echo/d" Makefile || die "sed failed"
}

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
}

src_install() {
	emake install DESTDIR="${D}" PREFIX="/usr"
}

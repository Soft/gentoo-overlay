# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 toolchain-funcs

DESCRIPTION="NsJail is a process isolation tool for Linux."
HOMEPAGE="https://google.github.io/nsjail/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/google/nsjail.git"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-Makefile.patch"
	tc-export CC
}

src_install() {
	dobin nsjail
	dodoc README.md
}

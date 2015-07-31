# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 toolchain-funcs

DESCRIPTION="Fuzzy completion for anything in the terminal"
HOMEPAGE="https://github.com/dhamidi/tmenu"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dhamidi/tmenu.git"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	cp "${FILESDIR}/Makefile" "${S}/Makefile"
	tc-export CC
	epatch_user
}

src_install() {
	dobin tmenu
	doman tmenu.1
}

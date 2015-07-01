# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 eutils savedconfig toolchain-funcs

DESCRIPTION="simple ncurses text editor"
HOMEPAGE="http://tools.suckless.org/sandy"
SRC_URI=""
EGIT_REPO_URI="http://git.suckless.org/sandy"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	tc-export CC PKG_CONFIG
	restore_config config.h
	epatch "${FILESDIR}/${PN}-config.patch"
	epatch_user
}

src_install() {
	emake install PREFIX=${D}/usr
	save_config config.h
}



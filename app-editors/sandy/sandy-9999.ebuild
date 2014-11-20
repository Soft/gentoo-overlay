# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils savedconfig

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
	restore_config config.h
	epatch_user
}

src_install() {
	default
	save_config config.h
}



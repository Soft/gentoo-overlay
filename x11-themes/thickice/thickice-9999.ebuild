# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A port of the ThinIce theme to GTK3"
HOMEPAGE="https://github.com/fstirlitz/thickice"
SRC_URI=""
EGIT_REPO_URI="https://github.com/fstirlitz/thickice.git"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/gtk+:3
		=dev-lang/vala-0.24*"
RDEPEND="x11-libs/gtk+:3"

src_prepare() {
	sed -i -e 's/valac/valac-0.24/g' Makefile
}

src_install() {
	emake ROOT="${D}" install
}



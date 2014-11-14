# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="libsass command line driver"
HOMEPAGE="https://github.com/sass/sassc"
SRC_URI=""
EGIT_REPO_URI="https://github.com/sass/sassc.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="=dev-libs/libsass-9999"
RDEPEND=""

src_prepare() {
	sed -i -e 's/BUILD="static" $(MAKE) -C $(SASS_LIBSASS_PATH)/true/g' Makefile
}

src_compile() {
	emake SASS_LIBSASS_PATH=/usr
}

src_install() {
	dobin bin/sassc
}


# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit mercurial toolchain-funcs

DESCRIPTION="A utility for running arbitrary commands when files change."
HOMEPAGE="http://entrproject.org"
EHG_REPO_URI="https://bitbucket.org/eradman/entr"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	tc-export CC
	cp Makefile.linux Makefile
}

src_configure() {
	true;
}

src_install() {
	emake install PREFIX=${D}/usr
}

# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils toolchain-funcs

DESCRIPTION="compile anything"
HOMEPAGE="http://www.iq0.com/duffgram/com.html"
SRC_URI="http://www.iq0.com/duffgram/com.c"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_unpack() {
	cp "${DISTDIR}"/"${PN}".c "${S}"/"${PN}".c || die
}

src_prepare() {
	epatch "${FILESDIR}/${P}-include-fix.patch"
}

src_compile() {
	emake CC="$(tc-getCC)" ${PN}
}

src_install() {
	dobin com
}



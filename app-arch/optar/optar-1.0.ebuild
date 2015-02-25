# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Codec for encoding data on paper"
HOMEPAGE="http://ronja.twibright.com/optar/"
SRC_URI="http://ronja.twibright.com/optar.tgz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+pgm2ps"

S="${WORKDIR}/optar_dist"

DEPEND="media-libs/libpng
pgm2ps? ( media-gfx/imagemagick )"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/${P}-Makefile.patch"
}

src_install() {
	dobin optar unoptar
	if use pgm2ps ; then
		dobin pgm2ps
	fi
	dodoc README
}


# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit font

DESCRIPTION="Unscii is a set of bitmapped Unicode fonts based on classic system fonts."
HOMEPAGE="http://pelulamu.net/unscii/"
SRC_URI="
sixteen? ( http://pelulamu.net/${PN}/${PN}-16.otf )
full?    ( http://pelulamu.net/${PN}/${PN}-16-full.otf )
eight?   ( http://pelulamu.net/${PN}/${PN}-8.otf )
tall?    ( http://pelulamu.net/${PN}/${PN}-8-tall.otf )
thin?    ( http://pelulamu.net/${PN}/${PN}-8-thin.otf )
alt?     ( http://pelulamu.net/${PN}/${PN}-8-alt.otf )
mcr?     ( http://pelulamu.net/${PN}/${PN}-8-mcr.otf )
fantasy? ( http://pelulamu.net/${PN}/${PN}-8-fantasy.otf )
"
LICENSE="public-domain full? ( GPL-2 )"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+sixteen +eight +full tall thin alt mcr fantasy"
S="${WORKDIR}"

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	cp "${DISTDIR}"/* "${S}"/ || die
}

FONT_S="${S}"

FONT_SUFFIX="otf"

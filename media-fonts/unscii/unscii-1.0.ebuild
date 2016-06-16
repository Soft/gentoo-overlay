# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit font

DESCRIPTION="Unscii is a set of bitmapped Unicode fonts based on classic system fonts."
HOMEPAGE="http://pelulamu.net/unscii/"
SRC_URI="
sixteen? ( pcf? ( http://pelulamu.net/${PN}/${PN}-16.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-16.otf ) )
full?    ( pcf? ( http://pelulamu.net/${PN}/${PN}-16-full.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-16-full.otf ) )
eight?   ( pcf? ( http://pelulamu.net/${PN}/${PN}-8.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8.otf ) )
tall?    ( pcf? ( http://pelulamu.net/${PN}/${PN}-8-tall.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8-tall.otf ) )
thin?    ( pcf? ( http://pelulamu.net/${PN}/${PN}-8-thin.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8-thin.otf ) )
alt?     ( pcf? ( http://pelulamu.net/${PN}/${PN}-8-alt.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8-alt.otf ) )
mcr?     ( pcf? ( http://pelulamu.net/${PN}/${PN}-8-mcr.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8-mcr.otf ) )
fantasy? ( pcf? ( http://pelulamu.net/${PN}/${PN}-8-fantasy.pcf )
           otf? ( http://pelulamu.net/${PN}/${PN}-8-fantasy.otf ) )
"
LICENSE="public-domain full? ( GPL-2 )"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+sixteen +eight +full tall thin alt mcr fantasy pcf +otf"
REQUIRED_USE="|| ( pcf otf )"
S="${WORKDIR}"

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	cp "${DISTDIR}"/* "${S}"/ || die
}

FONT_S="${S}"

FONT_SUFFIX=""
if use otf; then
	FONT_SUFFIX+="${FONT_SUFFIX} otf"
fi
if use pcf; then
	FONT_SUFFIX+="${FONT_SUFFIX} pcf"
fi

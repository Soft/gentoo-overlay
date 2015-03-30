# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit font

DESCRIPTION="Versatile OpenType font for screen, print, and Web."
HOMEPAGE="https://01.org/clear-SANS"
SRC_URI="https://01.org/sites/default/files/downloads/clear-sans/clearsans-1.00.zip"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
S="${WORKDIR/clearsans-1.00}"

DEPEND=""
RDEPEND="${DEPEND}"

FONT_S="${S}/TTF"
FONT_SUFFIX="ttf"


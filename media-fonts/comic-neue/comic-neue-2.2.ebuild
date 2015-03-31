# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit font

DESCRIPTION="Comic Neue font"
HOMEPAGE="http://comicneue.com/"
SRC_URI="http://comicneue.com/comic-neue-2.2.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"

FONT_S="${S}/OTF"
FONT_SUFFIX="otf"

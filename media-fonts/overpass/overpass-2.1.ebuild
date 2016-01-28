# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit font

DESCRIPTION="An open source webfont family inspired by Highway Gothic."
HOMEPAGE="http://overpassfont.org"
SRC_URI="https://github.com/RedHatBrand/overpass/releases/download/2.1/overpass-fonts-ttf-2.1.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
S="${WORKDIR}"

DEPEND="app-arch/unzip"
RDEPEND=""

FONT_S="${S}/overpass-fonts-ttf-2.1"
FONT_SUFFIX="ttf"

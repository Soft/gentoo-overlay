# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit font

DESCRIPTION="A programmer's typeface."
HOMEPAGE="https://be5invis.github.io/Iosevka"
SRC_URI="https://github.com/be5invis/Iosevka/releases/download/v1.12.4/iosevka-pack-1.12.4.zip"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
S="${WORKDIR}"

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"

FONT_SUFFIX="ttc"



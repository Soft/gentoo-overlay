# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 font

DESCRIPTION="The Crimson Text typeface"
HOMEPAGE="https://aldusleaf.org/crimson.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/skosch/Crimson.git"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	# Fixes problem with FONT_S
	mv "${S}/Desktop Fonts" "${S}/desktop"
}

FONT_S="${S}/desktop/OTF"
FONT_SUFFIX="otf"



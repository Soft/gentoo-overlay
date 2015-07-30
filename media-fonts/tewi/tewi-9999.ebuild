# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 font

DESCRIPTION="A font"
HOMEPAGE="https://github.com/lucy/tewi-font"
SRC_URI=""
EGIT_REPO_URI="https://github.com/lucy/tewi-font.git"
LICENSE="GPL-3-with-font-exception"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	true;
}

FONT_SUFFIX="bdf"

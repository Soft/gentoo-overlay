# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 font

DESCRIPTION="The iconic font"
HOMEPAGE="http://fontawesome.io"
SRC_URI=""
EGIT_REPO_URI="https://github.com/FortAwesome/Font-Awesome.git"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

FONT_S="${S}/fonts"
FONT_SUFFIX="otf"

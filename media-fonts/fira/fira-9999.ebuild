# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 font

DESCRIPTION="Mozilla's new typeface, used in Firefox OS"
HOMEPAGE="https://mozilla.github.io/Fira/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mozilla/Fira.git"
LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

FONT_S="${S}/otf"
FONT_SUFFIX="otf"


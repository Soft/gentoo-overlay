# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="Tool for automatically downloading images from 4chan threads"
HOMEPAGE="https://gist.github.com/Soft/2bd8826b83a71a2bb8e5"
SRC_URI=""
EGIT_REPO_URI="https://gist.github.com/2bd8826b83a71a2bb8e5.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-misc/jshon
		net-misc/curl"
RDEPEND="${DEPEND}"

src_install() {
	newbin 4chan-fetch.sh 4chan-fetch
}


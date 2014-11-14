# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="json parser for the shell."
HOMEPAGE="http://kmkeen.com/jshon/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/keenerd/jshon.git"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/jansson"
RDEPEND="${DEPEND}"

src_install() {
	dobin jshon
	doman jshon.1
}



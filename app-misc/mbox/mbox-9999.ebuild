# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A lightweight sandbox tool for non-root users"
HOMEPAGE="http://pdos.csail.mit.edu/mbox/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/tsgates/mbox.git"
EGIT_SOURCEDIR="${WORKDIR}/${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
S="${WORKDIR}/${P}/src"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	cp {.,}configsbox.h
}


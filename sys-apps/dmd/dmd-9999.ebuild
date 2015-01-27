# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 autotools

DESCRIPTION="Daemon managing Daemons"
HOMEPAGE="https://www.gnu.org/software/dmd/"
SRC_URI=""
EGIT_REPO_URI="http://git.savannah.gnu.org/r/dmd.git"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-scheme/guile-2.0.0"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}





# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3 autotools

DESCRIPTION="A foreign function interface for bash."
HOMEPAGE="http://ctypes.sh"
SRC_URI=""
EGIT_REPO_URI="https://github.com/taviso/ctypes.sh.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-shells/bash[plugins]
virtual/libffi"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
	prune_libtool_files
	dodoc AUTHORS NEWS README.md TODO
}

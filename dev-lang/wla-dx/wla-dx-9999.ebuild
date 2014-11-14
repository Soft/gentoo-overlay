# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="Yet Another GB-Z80/Z80/6502/65C02/6510/65816/HUC6280/SPC-700 Multi Platform Cross Assembler Package"
HOMEPAGE="http://www.villehelin.com/wla.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/vhelin/wla-dx.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	./unix.sh 1
}

src_install() {
	for bin in "${S}"/binaries/*; do
		dobin $bin
	done
}


# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 toolchain-funcs

DESCRIPTION="Enchive is a tool to encrypt files to yourself for long-term archival."
HOMEPAGE="https://github.com/skeeto/enchive"
SRC_URI=""
EGIT_REPO_URI="https://github.com/skeeto/enchive.git"
LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
}

src_install() {
	emake install DESTDIR="${D}" PREFIX="/usr"
	dodoc 'README.md'
}



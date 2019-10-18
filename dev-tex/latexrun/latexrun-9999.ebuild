# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 python3_5 python3_6 python3_7 )

inherit git-r3 python-single-r1

DESCRIPTION="A 21st century LaTeX wrapper"
HOMEPAGE="https://github.com/aclements/latexrun"
SRC_URI=""
EGIT_REPO_URI="https://github.com/aclements/latexrun.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"

src_prepare() {
	python_fix_shebang latexrun
}

src_install() {
	dodoc README.md
	dobin latexrun
}

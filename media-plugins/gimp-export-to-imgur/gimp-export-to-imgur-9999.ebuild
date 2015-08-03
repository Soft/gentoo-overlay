# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit git-r3 python-single-r1

DESCRIPTION="Export current image to Imgur"
HOMEPAGE="https://github.com/tschuy/gimp-export-to-imgur"
SRC_URI=""
EGIT_REPO_URI="https://github.com/tschuy/gimp-export-to-imgur.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-gfx/gimp[python,${PYTHON_USEDEP}]
${PYTHON_DEPS}"
RDEPEND="${DEPEND}"

src_prepare() {
	python_fix_shebang upload.py
}

src_install() {
	insinto $(gimptool-2.0 --gimpplugindir)/plug-ins
	insopts -m755
	doins upload.py || die
}


# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit mercurial

DESCRIPTION="Tool for fancier directory listings"
HOMEPAGE="https://bitbucket.org/Soft/sl/src"
SRC_URI=""
EHG_REPO_URI="https://bitbucket.org/Soft/sl"
LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	newbin sl.sh sl
}

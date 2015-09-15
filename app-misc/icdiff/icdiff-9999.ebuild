# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_7,3_4} )

inherit git-r3 distutils-r1

DESCRIPTION="Improved colored diff"
HOMEPAGE="http://www.jefftk.com/icdiff"
SRC_URI=""
EGIT_REPO_URI="https://github.com/jeffkaufman/icdiff.git"
LICENSE="PYTHON"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"


# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python{2_7,3_{4,5,6,7,8}} )

inherit git-r3 distutils-r1

DESCRIPTION="Python based tools for i3 users and developers"
HOMEPAGE="https://github.com/ziberna/i3-py"
SRC_URI=""
EGIT_REPO_URI="https://github.com/ziberna/i3-py.git"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}"


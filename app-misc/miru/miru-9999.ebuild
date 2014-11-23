# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit mercurial distutils-r1

DESCRIPTION="Tool for keeping track of seen tv-series' episodes."
HOMEPAGE="http://soft.bitbucket.org/miru/"
SRC_URI=""
EHG_REPO_URI="https://bitbucket.org/Soft/miru"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-python/urwid-1.0.0[${PYTHON_USEDEP}]
		>=dev-python/sqlalchemy-0.7.2[$PYTHON_USEDEP]"
RDEPEND="${DEPEND}"

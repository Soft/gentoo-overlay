# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit mercurial flag-o-matic

DESCRIPTION="A utility for running arbitrary commands when files change."
HOMEPAGE="http://entrproject.org"
EHG_REPO_URI="https://bitbucket.org/eradman/entr"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	./configure
}

src_install() {
	dobin entr
}


# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Libvoikko provides spell checking, hyphenation, grammar checking and morphological analysis for Finnish language."
HOMEPAGE="http://voikko.puimula.org/"
SRC_URI="http://www.puimula.org/voikko-sources/libvoikko/libvoikko-3.7.1.tar.gz"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-libs/suomi-malaga-1.18"
RDEPEND="${DEPEND}"



# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit git-r3 distutils-r1

DESCRIPTION="rtmpdump frontend for Yle servers"
HOMEPAGE="https://aajanki.github.io/yle-dl/index-en.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/aajanki/yle-dl.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="net-misc/youtube-dl
dev-python/pycrypto[${PYTHON_USEDEP}]
media-video/rtmpdump
media-video/ffmpeg
dev-lang/php[bcmath,crypt,curl,simplexml]"
RDEPEND="${DEPEND}"


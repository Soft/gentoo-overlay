# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-r3

DESCRIPTION="lightweight and customizable notification daemon"
HOMEPAGE="http://knopwob.org/dunst/index.html"
SRC_URI=""
EGIT_REPO_URI="https://github.com/knopwob/dunst.git"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-apps/dbus
x11-libs/libXinerama
x11-libs/libXft
x11-libs/libXScrnSaver
dev-libs/libxdg-basedir"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
	dodoc CHANGELOG
}

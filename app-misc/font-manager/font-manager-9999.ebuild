# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 vala gnome2 autotools

DESCRIPTION="A simple font management application for Gtk+ Desktop Environments"
HOMEPAGE="https://fontmanager.github.io"
SRC_URI=""
EGIT_REPO_URI="https://github.com/FontManager/master.git"
VALA_MAX_API_VERSION=0.28

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="gnome-base/gnome-common
		>=dev-libs/libxml2-2.5
		>=media-libs/freetype-2.5
		>=media-libs/fontconfig-2.1
		>=dev-libs/glib-2.4
		>=dev-libs/json-glib-0.15
		>=x11-libs/cairo-1.1
		>=x11-libs/gtk+-3.14
		>=x11-libs/pango-1.3
		>=dev-libs/libgee-0.1
		>=dev-db/sqlite-3.8
		>=gnome-extra/gucharmap-3.1[vala,introspection]
		app-text/yelp-tools"
DEPEND="${RDEPEND}
		=dev-lang/vala-0.24*"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	#epatch "${FILESDIR}/disable-preference-check.patch"
	#epatch "${FILESDIR}/resource-path.patch"
	#epatch "${FILESDIR}/text-tag.patch"
	eautoreconf
	vala_src_prepare
	gnome2_src_prepare
}


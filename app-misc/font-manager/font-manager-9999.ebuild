# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 vala gnome2 autotools

DESCRIPTION="A simple font management application for Gtk+ Desktop Environments"
HOMEPAGE="https://fontmanager.github.io"
SRC_URI=""
EGIT_REPO_URI="https://github.com/FontManager/master.git"
VALA_MIN_API_VERSION=0.28

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="nautilus thunar"

RDEPEND="gnome-base/gnome-common
		>=dev-libs/libxml2-2.5
		>=media-libs/freetype-2.5
		>=media-libs/fontconfig-2.1
		>=dev-libs/glib-2.4
		>=dev-libs/json-glib-0.15
		>=x11-libs/cairo-1.1
		>=x11-libs/gtk+-3.16
		>=x11-libs/pango-1.3
		>=dev-libs/libgee-0.14
		>=dev-db/sqlite-3.8
		>=gnome-extra/gucharmap-3.12[vala,introspection]
		app-text/yelp-tools
		nautilus? ( dev-python/nautilus-python )
		thunar? ( dev-python/thunarx-python )"
DEPEND="${RDEPEND}
		>=dev-lang/vala-0.28"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	eautoreconf
	vala_src_prepare
	gnome2_src_prepare
}

src_configure() {
    econf \
        $(use_with nautilus nautilus) \
        $(use_with thunar thunarx) \
        --without-nemo
}

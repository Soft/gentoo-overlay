# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit subversion vala gnome2

DESCRIPTION="A simple font management application for Gtk+ Desktop Environments"
HOMEPAGE="https://code.google.com/p/font-manager/"
SRC_URI=""
ESVN_REPO_URI="http://font-manager.googlecode.com/svn/trunk/"
VALA_MAX_API_VERSION=0.24

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
		app-arch/file-roller
		app-text/yelp-tools"
DEPEND="${RDEPEND}
		=dev-lang/vala-0.24*"

src_unpack() {
	subversion_src_unpack
}

src_prepare() {
	vala_src_prepare
	./autogen.sh --prefix=/usr
	gnome2_src_prepare
}


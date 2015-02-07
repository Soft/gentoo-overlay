# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils savedconfig

DESCRIPTION="Simple (or small or suckless) X Image Viewer"
HOMEPAGE="https://github.com/muennich/sxiv"
SRC_URI=""
EGIT_REPO_URI="https://github.com/muennich/sxiv.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-libs/libX11
		media-libs/imlib2
		media-libs/libexif
		media-libs/giflib"
RDEPEND="${DEPEND}"

src_prepare() {
	restore_config config.h
	epatch_user
}

src_install() {
	default
	for size in 16 32 48 64 128; do
		newicon -s $size icon/"${size}x${size}.png" sxiv.png
	done
	domenu sxiv.desktop
	save_config config.h
}


# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A C/C++ implementation of a Sass compiler"
HOMEPAGE="http://libsass.org"
SRC_URI=""
EGIT_REPO_URI="https://github.com/sass/libsass.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	cat <<-EOF > "${T}"/libsass.pc
	prefix=/usr
	libdir=/usr/lib
	includedir=\${prefix}/include

	Name: libsass
	Description: ${DESCRIPTION}
	Version: ${PV}
	cflags: -I\${includedir}/sass
	EOF
	emake DESTDIR="${D}" PREFIX=/usr install
	insinto /usr/$(get_libdir)/pkgconfig
	doins "${T}"/libsass.pc
	dodir /usr/include/sass
	insinto /usr/include/sass
	doins sass.h
	doins sass_interface.h
	doins sass2scss.h
}



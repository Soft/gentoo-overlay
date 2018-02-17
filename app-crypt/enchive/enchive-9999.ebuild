# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 elisp-common toolchain-funcs

DESCRIPTION="Enchive is a tool to encrypt files to yourself for long-term archival."
HOMEPAGE="https://github.com/skeeto/enchive"
SRC_URI=""
EGIT_REPO_URI="https://github.com/skeeto/enchive.git"
LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="emacs"

DEPEND="emacs? ( >=virtual/emacs-25 )"
RDEPEND="${DEPEND}"

SITEFILE="50enchive-gentoo.el"

src_compile() {
	emake CC="$(tc-getCC)" CFLAGS="${CFLAGS}"
	use emacs && elisp-compile enchive-mode.el
}

src_install() {
	emake install DESTDIR="${D}" PREFIX="/usr"
	if use emacs; then
		elisp-install "${PN}" enchive-mode.{el,elc}
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi
	dodoc 'README.md' 'NEWS.md'	
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}




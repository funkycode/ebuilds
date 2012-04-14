# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit eutils

DESCRIPTION="Highly-optimized media functions for x86 processors, built using IPP"
HOMEPAGE="http://www.virtualgl.org/"
SRC_URI="mirror://sourceforge/virtualgl/${P}.tar.gz"

LICENSE="wxWinLL-3.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sci-libs/ipp"
DEPEND="${RDEPEND}"

pkg_setup() {
	eerror "ERROR: this ebuild is a stub and was never tested, since"
	eerror "  that requires proprietary intel libs. Use binary turbojpeg instead."
	die "Not implemented"
}

#src_compile() {
#	emake || die "make failed"
#}

# :xCopyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit rpm multilib

DESCRIPTION="Highly-optimized media functions for x86 processors, built using IPP"
HOMEPAGE="http://www.virtualgl.org/"
SRC_URI="x86? ( mirror://sourceforge/virtualgl/${P}.i386.rpm )
	amd64? ( mirror://sourceforge/virtualgl/${P}.x86_64.rpm )"

LICENSE="wxWinLL-3.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="multilib"
RESTRICT="mirror"

RDEPEND=""
DEPEND="${RDEPEND}"


src_unpack() {
	rpm_src_unpack
}


src_install() {
	insinto /
	doins -r usr || die "install failed"
	use amd64 && mv "${D}"/usr/lib{,32} # fix x86 lib pathname
	prepall
}

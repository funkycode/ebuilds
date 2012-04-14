# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2

DESCRIPTION="Virtual package for turbojpeg implementations"
HOMEPAGE="http://www.virtualgl.org/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE="ipp"

PROPERTIES="virtual"

RDEPEND="ipp? ( media-libs/turbojpeg-ipp )
	!ipp? ( media-libs/turbojpeg )"
DEPEND="${RDEPEND}"

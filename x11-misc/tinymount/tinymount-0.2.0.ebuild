# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

LANGS="ru"

if [[ ${PV} == *9999 ]]; then
	SCM="git-2"
	EGIT_REPO_URI="https://github.com/limansky/tinymount.git"
else
	SRC_URI="http://github.com/downloads/limansky/tinymount/${P}.tar.bz2"
fi

inherit qt4-r2 ${SCM}

DESCRIPTION="Simple disk mount utility"
HOMEPAGE="http://github.com/limansky/tinymount"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="x11-libs/qt-gui:4
		x11-libs/qt-dbus:4"
RDEPEND="${DEPEND}
		sys-fs/udisks"

src_configure() {
		eqmake4 PREFIX=/usr
}

src_install() {
		qt4-r2_src_install

		# remove unneed translations
		for lang in ${LANGS} ; do
			if ! has ${lang} ${LINGUAS} ; then
				rm ${D}/usr/share/${PN}/${PN}_${lang}.qm \
					|| eqawarn "Failed to remove ${lang} translation"
			fi
		done

		# installing docs
		dodoc README ChangeLog
}

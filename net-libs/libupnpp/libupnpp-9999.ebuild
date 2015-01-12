# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools

if [ "${PV}" = "9999" ]; then
	EGIT_REPO_URI="https://github.com/medoc92/libupnpp"
	inherit git-r3
	KEYWORDS="~arm ~amd64 ~x86"
fi

DESCRIPTION="The libupnpp C++ library wraps libupnp for easier use by upmpdcli and upplay"
HOMEPAGE="http://www.lesbonscomptes.com/upmpdcli"

LICENSE="GPL-2"
SLOT="0"

DEPEND="net-libs/libupnp"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

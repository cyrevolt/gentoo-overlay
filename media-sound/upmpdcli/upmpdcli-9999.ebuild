# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit autotools

if [ "${PV}" = "9999" ]; then
	EGIT_REPO_URI="https://github.com/medoc92/upmpdcli"
	inherit git-r3
	KEYWORDS="~arm ~amd64 ~x86"
fi

DESCRIPTION="UPnP Media Renderer front-end for MPD, the Music Player Daemon"
HOMEPAGE="http://www.lesbonscomptes.com/upmpdcli"

LICENSE="GPL-2"
SLOT="0"

DEPEND="dev-libs/expat
	media-libs/libmpdclient
	net-libs/libupnpp
	net-misc/curl"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}


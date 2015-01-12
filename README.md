# What do we have here?
This is a Gentoo overlay containing useful stuff for Radxa boards, home media systems and the like. You might consider this overlay to be just as experimental as the software it allows you to build. ;)

To add it to your system, you can use `layman` and put `cyrevolt.xml` as found in this folder into your `/etc/layman/overlays` directory (or into the respective directory if you have changed it). If you're using an older version of layman than 2.0, you might need to add the xml file manually to your `/etc/layman/layman.cfg`.
Then run `layman -f`, which should add the overlay to your list, and `layman -a cyrevolt` to add it to your system. You should see git quickly fetching this repo then.

# Software in this overlay
I haven't written any of the software here. These are just ebuild files that allow you to compile and install the packages through `portage`. Just use `emerge -av {package-name}` to build and install a package.

## upmpdcli
UPnP Audio Media Renderer based on MPD, homepage: http://www.lesbonscomptes.com/upmpdcli/

For an init script for OpenRC, check out https://github.com/cyrevolt/gentoo/

## libupnpp
A wrapper for `libupnp`, part of `upmpdcli`.

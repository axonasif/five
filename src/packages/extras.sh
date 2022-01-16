local GROUP="EXTRAS";

# Needs review
declare -A build_essential=(
	[archlinux]="base-devel"
	[centos]='dnf groupinstall -y "Development Tools"<#>'
	[debian]="build-essential"
	[fedora]='dnf groupinstall -y "Development Tools"<#>'
	[opensuse]='zypper install -y -t pattern devel_basis<#>'
	[ubuntu]="build-essential"
	[voidlinux]="base-devel"
)

declare -A dpkg_dev=(
	[archlinux]=""
	[centos]=""
	[debian]="dpkg-dev"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="dpkg-dev"
	[voidlinux]=""
)

declare -A imagemagick=(
	[archlinux]="imagemagick"
	[centos]="imagemagick"
	[debian]="imagemagick"
	[fedora]="imagemagick"
	[opensuse]="imagemagick"
	[ubuntu]="imagemagick"
	[voidlinux]="imagemagick"
)

unset GROUP;

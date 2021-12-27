local GROUP="EXTRAS";

# Needs review
declare -A build_essential=(
	[arch]="base-devel"
	[centos]='dnf groupinstall -y "Development Tools"||'
	[debian]="build-essential"
	[fedora]='dnf groupinstall -y "Development Tools"||'
	[opensuse]='zypper install -y -t pattern devel_basis||'
	[ubuntu]="build-essential"
	[void]="base-devel"
)

declare -A dpkg_dev=(
	[arch]=""
	[centos]=""
	[debian]="dpkg-dev"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="dpkg-dev"
	[void]=""
)

declare -A imagemagick=(
	[arch]="imagemagick"
	[centos]="imagemagick"
	[debian]="imagemagick"
	[fedora]="imagemagick"
	[opensuse]="imagemagick"
	[ubuntu]="imagemagick"
	[void]="imagemagick"
)

unset GROUP;
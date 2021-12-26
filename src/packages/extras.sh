{ local GROUP="extras";

# set +u
declare -A build_essential=(
	[arch]="$_pkg"
	# [centos]="$_pkg"
	# [debian]="$_pkg"
	# [fedora]="$_pkg"
	# [opensuse]="$_pkg"
	# [ubuntu]="$_pkg"
	# [void]="$_pkg"
)

echo "${build_essential[arch]}"
exit

declare -A dpkg_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A imagemagick=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

unset GROUP; }
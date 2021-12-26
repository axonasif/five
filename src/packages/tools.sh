# Mainly exclusive to dev tools

local GROUP="tools";

declare -A dirmngr=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A bzr=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A git=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A git_lfs=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$PKG|add-apt-repository -y ppa:git-core/ppa && git lfs install --system"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$PKG|add-apt-repository -y ppa:git-core/ppa && git lfs install --system"
	[void]="$_pkg"
)

declare -A mercurial=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A subversion=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A jq=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

unset GROUP;
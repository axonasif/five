# Mainly exclusive to dev tools

local GROUP="tools";

declare -A dirmngr=(
	[arch]="gnupg"
	[centos]="gnupg2"
	[debian]="dirmngr"
	[fedora]="gnupg2"
	[opensuse]="dirmngr"
	[ubuntu]="dirmngr"
	[void]="gnupg"
)

declare -A bzr=(
	[arch]="yay -Sy bzr|"
	[centos]="bzr" # Review
	[debian]="bzr"
	[fedora]="bzr" # Review
	[opensuse]="bzr"
	[ubuntu]="bzr"
	[void]="bzr"
) # http://wiki.bazaar.canonical.com/DistroDownloads

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
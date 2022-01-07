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
	[arch]="git-lfs"
	[centos]="git-lfs"
	[debian]="git-lfs"
	[fedora]="git-lfs"
	[opensuse]="git-lfs"
	[ubuntu]="git-lfs"
	[void]="git-lfs"
) # Review `add-apt-repository -y ppa:git-core/ppa && git lfs install --system`

declare -A mercurial=(
	[arch]="mercurial"
	[centos]="mercurial"
	[debian]="mercurial"
	[fedora]="mercurial"
	[opensuse]="mercurial"
	[ubuntu]="mercurial"
	[void]="mercurial"
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
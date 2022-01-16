# Mainly exclusive to dev tools

local GROUP="tools";

declare -A dirmngr=(
	[archlinux]="gnupg"
	[centos]="gnupg2"
	[debian]="dirmngr"
	[fedora]="gnupg2"
	[opensuse]="dirmngr"
	[ubuntu]="dirmngr"
	[voidlinux]="gnupg"
)

declare -A bzr=(
	[archlinux]="yay -Sy bzr||"
	[centos]="" # Review #TODO
	[debian]="bzr"
	[fedora]="" # Review #TODO
	[opensuse]="bzr"
	[ubuntu]="bzr"
	[voidlinux]="bzr"
) # http://wiki.bazaar.canonical.com/DistroDownloads

declare -A git=(
	[archlinux]="git"
	[centos]="git"
	[debian]="git"
	[fedora]="git"
	[opensuse]="git"
	[ubuntu]="git"
	[voidlinux]="git"
)

declare -A git_lfs=(
	[archlinux]="git-lfs"
	[centos]="git-lfs"
	[debian]="git-lfs"
	[fedora]="git-lfs"
	[opensuse]="git-lfs"
	[ubuntu]="git-lfs"
	[voidlinux]="git-lfs"
) # Review `add-apt-repository -y ppa:git-core/ppa && git lfs install --system`

declare -A mercurial=(
	[archlinux]="mercurial"
	[centos]="mercurial"
	[debian]="mercurial"
	[fedora]="mercurial"
	[opensuse]="mercurial"
	[ubuntu]="mercurial"
	[voidlinux]="mercurial"
)

declare -A subversion=(
	[archlinux]="subversion"
	[centos]="subversion"
	[debian]="subversion"
	[fedora]="subversion"
	[opensuse]="subversion"
	[ubuntu]="subversion"
	[voidlinux]="subversion"
)

declare -A jq=(
	[archlinux]="jq"
	[centos]="jq"
	[debian]="jq"
	[fedora]="jq"
	[opensuse]="jq"
	[ubuntu]="jq"
	[voidlinux]="jq"
)

unset GROUP;
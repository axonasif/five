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
	[centos]="" # Review #TODO
	[debian]="bzr"
	[fedora]="" # Review #TODO
	[opensuse]="bzr"
	[ubuntu]="bzr"
	[void]="bzr"
) # http://wiki.bazaar.canonical.com/DistroDownloads

declare -A git=(
	[arch]="git"
	[centos]="git"
	[debian]="git"
	[fedora]="git"
	[opensuse]="git"
	[ubuntu]="git"
	[void]="git"
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
	[arch]="subversion"
	[centos]="subversion"
	[debian]="subversion"
	[fedora]="subversion"
	[opensuse]="subversion"
	[ubuntu]="subversion"
	[void]="subversion"
)

declare -A jq=(
	[arch]="jq"
	[centos]="jq"
	[debian]="jq"
	[fedora]="jq"
	[opensuse]="jq"
	[ubuntu]="jq"
	[void]="jq"
)

unset GROUP;
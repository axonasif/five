local GROUP="base";

declare -A curl=(
	[arch]="curl"
	[centos]="curl"
	[debian]="curl"
	[fedora]="curl"
	[opensuse]="curl"
	[ubuntu]="curl"
	[void]="$_pkg"
)

declare -A ca__certificates=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A netbase=(
	[arch]=""
	[centos]=""
	[debian]="$_pkg"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="$_pkg"
	[void]="iptables" # Provides /etc/ethertypes
)

rev

declare -A wget=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A tzdata=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A gnupg=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A openssh_client=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A procps=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A bzip2=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A file=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A unzip=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A zip=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A unzip=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A bash__completion=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A htop=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A less=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A locales=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A man__db=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A nano=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A ripgrep=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A software__properties__common=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A sudo=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A time=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A emacs__nox=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A vim=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A multitail=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A lsof=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A ssl__cert=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A fish=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A zsh=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A patch=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A xz_utils=(
	[arch]="xz"
	[centos]="$_pkg"
	[debian]="xz-utils"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="xz-utils"
	[void]="$_pkg"
)

unset GROUP;
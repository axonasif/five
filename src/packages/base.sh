local GROUP="base";

declare -A curl=(
	[arch]="curl"
	[centos]="curl"
	[debian]="curl"
	[fedora]="curl"
	[opensuse]="curl"
	[ubuntu]="curl"
	[void]="curl"
)

declare -A ca__certificates=(
	[arch]="ca-certificates"
	[centos]="ca-certificates"
	[debian]="ca-certificates"
	[fedora]="ca-certificates"
	[opensuse]="ca-certificates"
	[ubuntu]="ca-certificates"
	[void]="ca-certificates"
)

declare -A netbase=(
	[arch]=""
	[centos]=""
	[debian]="netbase"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="netbase"
	[void]="iptables" # Provides /etc/ethertypes
)

rev

declare -A wget=(
	[arch]="wget"
	[centos]="wget"
	[debian]="wget"
	[fedora]="wget"
	[opensuse]="wget"
	[ubuntu]="wget"
	[void]="wget"
)

declare -A tzdata=(
	[arch]="tzdata"
	[centos]="tzdata"
	[debian]="tzdata"
	[fedora]="tzdata"
	[opensuse]="timezone"
	[ubuntu]="tzdata"
	[void]="tzdata"
)

declare -A gnupg=(
	[arch]="gnupg"
	[centos]="gnupg"
	[debian]="gnupg"
	[fedora]="gnupg"
	[opensuse]="gpg2"
	[ubuntu]="gnupg"
	[void]="gnupg"
)

declare -A openssh_client=(
	[arch]="openssh"
	[centos]="openssh"
	[debian]="openssh-client"
	[fedora]="openssh"
	[opensuse]="openssh"
	[ubuntu]="openssh-client"
	[void]="openssh"
)

declare -A procps=(
	[arch]="procps-ng"
	[centos]="procps-ng"
	[debian]="procps"
	[fedora]="procps-ng"
	[opensuse]="procps"
	[ubuntu]="procps"
	[void]="procps-ng"
)

declare -A bzip2=(
	[arch]="bzip2"
	[centos]="bzip2"
	[debian]="bzip2"
	[fedora]="bzip2"
	[opensuse]="bzip2"
	[ubuntu]="bzip2"
	[void]="bzip2"
)

declare -A file=(
	[arch]="file"
	[centos]="file"
	[debian]="file"
	[fedora]="file"
	[opensuse]="file"
	[ubuntu]="file"
	[void]="file"
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
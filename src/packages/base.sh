local GROUP="base";

declare -A bash=(
	[archlinux]="bash"
	[centos]="bash"
	[fedora]="bash"
	[opensuse]="bash"
	[ubuntu]="bash"
	[voidlinux]="bash"
)

declare -A curl=(
	[archlinux]="curl"
	[centos]="curl"
	[debian]="curl"
	[fedora]="curl"
	[opensuse]="curl"
	[ubuntu]="curl"
	[voidlinux]="curl"
)

declare -A ca__certificates=(
	[archlinux]="ca-certificates"
	[centos]="ca-certificates"
	[debian]="ca-certificates"
	[fedora]="ca-certificates"
	[opensuse]="ca-certificates"
	[ubuntu]="ca-certificates"
	[voidlinux]="ca-certificates"
)

declare -A netbase=(
	[archlinux]=""
	[centos]=""
	[debian]="netbase"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="netbase"
	[voidlinux]="iptables" # Provides /etc/ethertypes
)


declare -A wget=(
	[archlinux]="wget"
	[centos]="wget"
	[debian]="wget"
	[fedora]="wget"
	[opensuse]="wget"
	[ubuntu]="wget"
	[voidlinux]="wget"
)

declare -A tzdata=(
	[archlinux]="tzdata"
	[centos]="tzdata"
	[debian]="tzdata"
	[fedora]="tzdata"
	[opensuse]="timezone"
	[ubuntu]="tzdata"
	[voidlinux]="tzdata"
)

declare -A gnupg=(
	[archlinux]="gnupg"
	[centos]="gnupg"
	[debian]="gnupg"
	[fedora]="gnupg"
	[opensuse]="gpg2"
	[ubuntu]="gnupg"
	[voidlinux]="gnupg"
)

declare -A openssh_client=(
	[archlinux]="openssh"
	[centos]="openssh"
	[debian]="openssh-client"
	[fedora]="openssh"
	[opensuse]="openssh"
	[ubuntu]="openssh-client"
	[voidlinux]="openssh"
)

declare -A procps=(
	[archlinux]="procps-ng"
	[centos]="procps-ng"
	[debian]="procps"
	[fedora]="procps-ng"
	[opensuse]="procps"
	[ubuntu]="procps"
	[voidlinux]="procps-ng"
)

declare -A bzip2=(
	[archlinux]="bzip2"
	[centos]="bzip2"
	[debian]="bzip2"
	[fedora]="bzip2"
	[opensuse]="bzip2"
	[ubuntu]="bzip2"
	[voidlinux]="bzip2"
)

declare -A file=(
	[archlinux]="file"
	[centos]="file"
	[debian]="file"
	[fedora]="file"
	[opensuse]="file"
	[ubuntu]="file"
	[voidlinux]="file"
)

declare -A unzip=(
	[archlinux]="unzip"
	[centos]="unzip"
	[debian]="unzip"
	[fedora]="unzip"
	[opensuse]="unzip"
	[ubuntu]="unzip"
	[voidlinux]="unzip"
)

declare -A zip=(
	[archlinux]="zip"
	[centos]="zip"
	[debian]="zip"
	[fedora]="zip"
	[opensuse]="zip"
	[ubuntu]="zip"
	[voidlinux]="zip"
)

declare -A bash__completion=(
	[archlinux]="bash-completion"
	[centos]="bash-completion"
	[debian]="bash-completion"
	[fedora]="bash-completion"
	[opensuse]="bash-completion"
	[ubuntu]="bash-completion"
	[voidlinux]="bash-completion"
)

declare -A htop=(
	[archlinux]="htop"
	[centos]="htop"
	[debian]="htop"
	[fedora]="htop"
	[opensuse]="htop"
	[ubuntu]="htop"
	[voidlinux]="htop"
)

declare -A less=(
	[archlinux]="less"
	[centos]="less"
	[debian]="less"
	[fedora]="less"
	[opensuse]="less"
	[ubuntu]="less"
	[voidlinux]="less"
)

declare -A locales=(
	[archlinux]=""
	[centos]=""
	[debian]="locales"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="locales"
	[voidlinux]=""
) # Needs review

declare -A man__db=(
	[archlinux]="man-db"
	[centos]="man-db"
	[debian]="man-db"
	[fedora]="man-db"
	[opensuse]="man"
	[ubuntu]="man-db"
	[voidlinux]="man-db"
)

declare -A nano=(
	[archlinux]="nano"
	[centos]="nano"
	[debian]="nano"
	[fedora]="nano"
	[opensuse]="nano"
	[ubuntu]="nano"
	[voidlinux]="nano"
)

declare -A ripgrep=(
	[archlinux]="ripgrep"
	[centos]="dnf config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo||ripgrep"
	[debian]="ripgrep"
	[fedora]="ripgrep"
	[opensuse]="ripgrep"
	[ubuntu]="ripgrep"
	[voidlinux]="ripgrep"
)

declare -A software__properties__common=(
	[archlinux]=""
	[centos]=""
	[debian]="software-properties-common"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="software-properties-common"
	[voidlinux]=""
)

declare -A sudo=(
	[archlinux]="sudo"
	[centos]="sudo"
	[debian]="sudo"
	[fedora]="sudo"
	[opensuse]="sudo"
	[ubuntu]="sudo"
	[voidlinux]="sudo"
)

declare -A time=(
	[archlinux]="time"
	[centos]="time"
	[debian]="time"
	[fedora]="time"
	[opensuse]="time"
	[ubuntu]="time"
	[voidlinux]="time"
)

declare -A emacs__nox=(
	[archlinux]="emacs-nox"
	[centos]="emacs-nox"
	[debian]="emacs-nox"
	[fedora]="emacs-nox"
	[opensuse]="emacs-nox"
	[ubuntu]="emacs-nox"
	[voidlinux]="emacs"
)

declare -A vim=(
	[archlinux]="vim"
	[centos]="vim-enhanced"
	[debian]="vim"
	[fedora]="vim-enhanced"
	[opensuse]="vim"
	[ubuntu]="vim"
	[voidlinux]="vim"
)

declare -A multitail=(
	[archlinux]="multitail"
	[centos]="multitail"
	[debian]="multitail"
	[fedora]="multitail"
	[opensuse]="multitail"
	[ubuntu]="multitail"
	[voidlinux]="multitail"
)

declare -A lsof=(
	[archlinux]="lsof"
	[centos]="lsof"
	[debian]="lsof"
	[fedora]="lsof"
	[opensuse]="lsof"
	[ubuntu]="lsof"
	[voidlinux]="lsof"
)

declare -A ssl__cert=(
	[archlinux]=""
	[centos]=""
	[debian]="ssl-cert"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="ssl-cert"
	[voidlinux]=""
)

declare -A fish=(
	[archlinux]="fish"
	[centos]="fish"
	[debian]="fish"
	[fedora]="fish"
	[opensuse]="fish"
	[ubuntu]="fish"
	[voidlinux]="fish-shell"
)

declare -A zsh=(
	[archlinux]="zsh"
	[centos]="zsh"
	[debian]="zsh"
	[fedora]="zsh"
	[opensuse]="zsh"
	[ubuntu]="zsh"
	[voidlinux]="zsh"
)

declare -A patch=(
	[archlinux]="patch"
	[centos]="patch"
	[debian]="patch"
	[fedora]="patch"
	[opensuse]="patch"
	[ubuntu]="patch"
	[voidlinux]="patch"
)

declare -A xz_utils=(
	[archlinux]="xz"
	[centos]="xz"
	[debian]="xz-utils"
	[fedora]="xz"
	[opensuse]="xz"
	[ubuntu]="xz-utils"
	[voidlinux]="xz"
)

unset GROUP;

local GROUP="base";

declare -A bash=(
	[arch]="bash"
	[centos]="bash"
	[fedora]="bash"
	[opensuse]="bash"
	[ubuntu]="bash"
	[void]="bash"
)

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
	[arch]="unzip"
	[centos]="unzip"
	[debian]="unzip"
	[fedora]="unzip"
	[opensuse]="unzip"
	[ubuntu]="unzip"
	[void]="unzip"
)

declare -A zip=(
	[arch]="zip"
	[centos]="zip"
	[debian]="zip"
	[fedora]="zip"
	[opensuse]="zip"
	[ubuntu]="zip"
	[void]="zip"
)

declare -A bash__completion=(
	[arch]="bash-completion"
	[centos]="bash-completion"
	[debian]="bash-completion"
	[fedora]="bash-completion"
	[opensuse]="bash-completion"
	[ubuntu]="bash-completion"
	[void]="bash-completion"
)

declare -A htop=(
	[arch]="htop"
	[centos]="htop"
	[debian]="htop"
	[fedora]="htop"
	[opensuse]="htop"
	[ubuntu]="htop"
	[void]="htop"
)

declare -A less=(
	[arch]="less"
	[centos]="less"
	[debian]="less"
	[fedora]="less"
	[opensuse]="less"
	[ubuntu]="less"
	[void]="less"
)

declare -A locales=(
	[arch]=""
	[centos]=""
	[debian]="locales"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="locales"
	[void]=""
) # Needs review

declare -A man__db=(
	[arch]="man-db"
	[centos]="man-db"
	[debian]="man-db"
	[fedora]="man-db"
	[opensuse]="man"
	[ubuntu]="man-db"
	[void]="man-db"
)

declare -A nano=(
	[arch]="nano"
	[centos]="nano"
	[debian]="nano"
	[fedora]="nano"
	[opensuse]="nano"
	[ubuntu]="nano"
	[void]="nano"
)

declare -A ripgrep=(
	[arch]="ripgrep"
	[centos]="dnf config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo||ripgrep"
	[debian]="ripgrep"
	[fedora]="ripgrep"
	[opensuse]="ripgrep"
	[ubuntu]="ripgrep"
	[void]="ripgrep"
)

declare -A software__properties__common=(
	[arch]=""
	[centos]=""
	[debian]="software-properties-common"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="software-properties-common"
	[void]=""
)

declare -A sudo=(
	[arch]="sudo"
	[centos]="sudo"
	[debian]="sudo"
	[fedora]="sudo"
	[opensuse]="sudo"
	[ubuntu]="sudo"
	[void]="sudo"
)

declare -A time=(
	[arch]="time"
	[centos]="time"
	[debian]="time"
	[fedora]="time"
	[opensuse]="time"
	[ubuntu]="time"
	[void]="time"
)

declare -A emacs__nox=(
	[arch]="emacs-nox"
	[centos]="emacs-nox"
	[debian]="emacs-nox"
	[fedora]="emacs-nox"
	[opensuse]="emacs-nox"
	[ubuntu]="emacs-nox"
	[void]="emacs"
)

declare -A vim=(
	[arch]="vim"
	[centos]="vim-enhanced"
	[debian]="vim"
	[fedora]="vim-enhanced"
	[opensuse]="vim"
	[ubuntu]="vim"
	[void]="vim"
)

declare -A multitail=(
	[arch]="multitail"
	[centos]="multitail"
	[debian]="multitail"
	[fedora]="multitail"
	[opensuse]="multitail"
	[ubuntu]="multitail"
	[void]="multitail"
)

declare -A lsof=(
	[arch]="lsof"
	[centos]="lsof"
	[debian]="lsof"
	[fedora]="lsof"
	[opensuse]="lsof"
	[ubuntu]="lsof"
	[void]="lsof"
)

declare -A ssl__cert=(
	[arch]=""
	[centos]=""
	[debian]="ssl-cert"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="ssl-cert"
	[void]=""
)

declare -A fish=(
	[arch]="fish"
	[centos]="fish"
	[debian]="fish"
	[fedora]="fish"
	[opensuse]="fish"
	[ubuntu]="fish"
	[void]="fish-shell"
)

declare -A zsh=(
	[arch]="zsh"
	[centos]="zsh"
	[debian]="zsh"
	[fedora]="zsh"
	[opensuse]="zsh"
	[ubuntu]="zsh"
	[void]="zsh"
)

declare -A patch=(
	[arch]="patch"
	[centos]="patch"
	[debian]="patch"
	[fedora]="patch"
	[opensuse]="patch"
	[ubuntu]="patch"
	[void]="patch"
)

declare -A xz_utils=(
	[arch]="xz"
	[centos]="xz"
	[debian]="xz-utils"
	[fedora]="xz"
	[opensuse]="xz"
	[ubuntu]="xz-utils"
	[void]="xz"
)

unset GROUP;

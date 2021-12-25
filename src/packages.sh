_distro_packages=();
alias _define='_distro_packages+=("${PKG//-/_}") && declare -A ${PKG}';

## FROM buildpack-deps:focal
PKG="curl" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="ca-certificates" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="netbase" _define=(
	[arch]=""
	[centos]=""
	[debian]="$PKG"
	[fedora]=""
	[opensuse]=""
	[ubuntu]="$PKG"
	[void]="iptables" # Provides /etc/ethertypes
)

PKG="wget" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="tzdata" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="gnupg" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="dirmngr" _define=(
	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)

PKG="bzr" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="git" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)

PKG="git-lfs" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG|add-apt-repository -y ppa:git-core/ppa && git lfs install --system"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG|add-apt-repository -y ppa:git-core/ppa && git lfs install --system"
        [void]="$PKG"
)

PKG="mercurial" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="openssh-client" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="subversion" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="procps" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)

PKG="autoconf" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="automake" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="bzip2" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="dpkg-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="file" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="g++" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="gcc" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="imagemagick" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libbz2-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libc6-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libcurl4-openssl-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libdb-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libevent-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libffi-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libgdbm-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libglib2.0-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libgmp-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libjpeg-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libkrb5-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="liblzma-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libmagickcore-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libmagickwand-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libmaxminddb-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libncurses5-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libncursesw5-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libpng-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libpq-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libreadline-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libsqlite3-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libssl-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libtool" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libwebp-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libxml2-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libxslt-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="libyaml-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="make" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="patch" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="unzip" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="xz-utils" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="zlib1g-dev" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)

# TODO: Check this.
# # https://lists.debian.org/debian-devel-announce/2016/09/msg00000.html
# 		$( \
# # if we use just "apt-cache show" here, it returns zero because "Can't select versions from package 'libmysqlclient-dev' as it is purely virtual", hence the pipe to grep
# 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then \
# 				echo 'default-libmysqlclient-dev'; \
# 			else \
# 				echo 'libmysqlclient-dev'; \
# 			fi \
# 		) \
# 	; \
# 	rm -rf /var/lib/apt/lists/*

### From gitpod/workspace-images/base
# TODO: Needs more work from the source image
PKG="zip" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="unzip" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="bash-completion" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="build-essential" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="ninja-build" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="htop" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="jq" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="less" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="locales" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="man-db" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="nano" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="ripgrep" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="software-properties-common" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="sudo" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="time" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="emacs-nox" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="vim" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="multitail" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="lsof" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="ssl-cert" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="fish" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)
PKG="zsh" _define=(
        [arch]="$PKG"
        [centos]="$PKG"
        [debian]="$PKG"
        [fedora]="$PKG"
        [opensuse]="$PKG"
        [ubuntu]="$PKG"
        [void]="$PKG"
)


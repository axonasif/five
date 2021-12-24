_distro_packages=();
alias define='_distro_packages+=("$PKG") && declare -A ${PKG}';

## FROM buildpack-deps:focal
PKG=curl define=(
	[arch]="curl"
	[centos]="curl"
	[debian]="curl"
	[fedora]="curl"
	[opensuse]="curl"
	[ubuntu]="curl"
	[void]="curl"
)

PKG="ca_certificates" define=(
	[arch]="ca-certificates"
	[centos]="curl"
	[debian]="curl"
	[fedora]="curl"
	[opensuse]="curl"
	[ubuntu]="curl"
	[void]="curl"
)

PKG="curl" define=(

)
# 		curl \
# 		netbase \
# 		wget \
# # https://bugs.debian.org/929417
# 		tzdata \
# 	; \
# 	rm -rf /var/lib/apt/lists/*

# RUN set -ex; \
# 	if ! command -v gpg > /dev/null; then \
# 		apt-get update; \
# 		apt-get install -y --no-install-recommends \
# 			gnupg \
# 			dirmngr \
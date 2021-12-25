for pkg in zip unzip bash-completion build-essential ninja-build htop jq less locales man-db nano ripgrep software-properties-common sudo time emacs-nox vim multitail lsof ssl-cert fish zsh; do 
	printf '%s\n' "PKG=\"$pkg\" _define=(" \
	'	[arch]="$PKG"
	[centos]="$PKG"
	[debian]="$PKG"
	[fedora]="$PKG"
	[opensuse]="$PKG"
	[ubuntu]="$PKG"
	[void]="$PKG"
)'; done

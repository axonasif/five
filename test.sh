# for pkg in zip unzip bash-completion build-essential ninja-build htop jq less locales man-db nano ripgrep software-properties-common sudo time emacs-nox vim multitail lsof ssl-cert fish zsh; do 
# 	printf '%s\n' "PKG=\"$pkg\" _define=(" \
# 	'	[arch]="$PKG"
# 	[centos]="$PKG"
# 	[debian]="$PKG"
# 	[fedora]="$PKG"
# 	[opensuse]="$PKG"
# 	[ubuntu]="$PKG"
# 	[void]="$PKG"
# )'; done

_args=("$@");

for _distro in archlinux centos debian fedora "opensuse/leap" ubuntu "voidlinux/voidlinux"; do
	printf "\n>>>> Checking on %s .... >>>> " "$_distro";

	case "$_distro" in
		archlinux) cmd='pacman -Si' ;;
		centos) cmd='dnf info' ;;
		debian) cmd='apt-get install' ;;
		fedora) cmd='dnf info' ;;
		"opensuse/leap") cmd='zypper install' ;;
		ubuntu) cmd='apt-get install' ;;
		"voidlinux/voidlinux") cmd='xbps-install -S' ;;
	esac

	_distro="${_distro//\//_}";
	if test "$_distro" == "opensuse_leap"; then {
		if grep "package '.*' not found" <<<"$(docker exec -it $_distro $cmd "${_args[@]}")"; then {
			printf 'notok';
		} else {
			printf 'ok';
		} fi
	} else {
		if docker exec -it $_distro $cmd "${_args[@]}" 2>&1; then {
			printf 'ok';
		} else {
			printf 'notok';
		} fi
	} fi
done
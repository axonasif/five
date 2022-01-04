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

set -u;

_args=("$@");

for _pkg in "${_args[@]}"; do {
	for _distro in "${DISTRO:-archlinux}" centos debian fedora "opensuse/leap" ubuntu "voidlinux/voidlinux"; do
		printf ">>>> Checking %s on %s .... >>>> " "$_pkg" "$_distro";

		case "$_distro" in
			archlinux) cmd='pacman -Si' ;;
			centos) cmd='dnf info' ;;
			debian) cmd='apt-cache search' ;;
			fedora) cmd='dnf info' ;;
			"opensuse/leap") cmd='zypper info' ;;
			ubuntu) cmd='apt-cache search' ;;
			"voidlinux/voidlinux") cmd='xbps-install -Sn' ;;
		esac

		function run_cmd() {
			docker exec -it $_distro $cmd "$(
				if [ "$_distro" == "ubuntu" ] || [ "$_distro" == "debian" ]; then {
					printf '%s\n' "^${_pkg}$";
				} else {
					printf '%s\n' "$_pkg";
				} fi
			)";
		}

		function assert_cmd() {
			if "$@" > /dev/null 2>&1; then {
				printf '%s\n' 'ok';
			} else {
				printf '%s\n' 'notok';
			} fi
		}

		_distro="${_distro//\//_}";
		case "$_distro" in
			"opensuse_leap")
				assert_cmd test -z \
				"$(grep "package '${_pkg}' not found" <<<"$(run_cmd)")";
			;;
			"ubuntu"|"debian")
				assert_cmd test -n "$(run_cmd)";
			;;
			*)
				assert_cmd run_cmd;
			;;
		esac

	if test -v DISTRO && test -n "${DISTRO:-}"; then {
		break;
	} fi

	done
} done

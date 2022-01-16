function pkgman::perform_tasks() {
	declare -gr _pkgs=("${@}");
	declare -r _div='\<#\>';

	if [[ "${_pkgs[*]}" =~ ${_div} ]]; then {
		local _pkg;
		for _pkg in "${_pkgs[@]}"; do {
			local _before="${_pkg%%${_div}*}";
			local _name="$(
				if [[ ! "$_pkg" =~ ${_div} ]]; then {
					printf "$_pkg\n";
				} elif [[ "$_pkg" =~ ${_div}.*${_div} ]]; then {
					printf "${BASH_REMATCH//${_div}/}\n"
				} fi
			)"; # Avoids non-zero return code
			local _after="${_pkg##*<#>}";
			if test -n "$_name"; then
				_pkg_names+=("$_name");
			fi
			$_before
			$_after

		} done
	} else {
		declare -gn _pkg_names=_pkgs;
	} fi

}

function pkgman::archlinux() {
	pacman -Syyu --noconfirm --noprogressbar; # Force update the package db and upgrade
	pkgman::perform_tasks "${@}"; # Also defines _pkg_names array
	echo "##### ${_pkg_names[@]}"
	pacman -S --noconfirm --noprogressbar --needed "${_pkg_names[@]}"; # Install packages
	pacman -Scc --noconfirm; # Clean package cache
}


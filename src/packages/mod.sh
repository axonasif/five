# alias _define='declare -n _pkg="$_pkg" && declare -n _group="$GROUP" && _all_packages+=("${PKG//-/_}") && _group+=("${PKG//-/_}") && declare -A _pkg';
function declare() {
	local args=("$@");
	# local _pkg="${args[1]//__/-}";
	local _pkg="${args[1]}";
	local -n _group="${GROUP^^}_GROUP" && _group+=("${_pkg}"); # Assign package name to group
	ALL_PACKAGES+=("${_pkg}"); # Save all packages separately

	builtin declare "$@";
	# unset _pkg;
}

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

# use base;
# use tools;
# use lang_tools;
use extras;
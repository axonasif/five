readonly _multitux_meta_name="Bashbox.meta";
# readonly _usemols_meta_name="Usemols.meta";
readonly _src_dir_name="src";
readonly _multitux_home="${HOME:-"${0%/*}"}/.multitux" && mkdir -p "$_multitux_home";
readonly _multitux_registrydir="$_multitux_home/registry" && mkdir -p "$_multitux_registrydir";

readonly SUBCOMMANDS_DESC=(
	""
	"Integrate a distro into your host environment"
	"Create Dockerfile for one of the supported distros"
);

readonly _supported_distros=(
	archlinux
	centos
	debian
	fedora
	opensuse
	ubuntu
	voidlinux
)
readonly -A _distro_image=(
	["${_supported_distros[0]}"]="${_supported_distros[0]}"
	["${_supported_distros[1]}"]="${_supported_distros[1]}"
	["${_supported_distros[2]}"]="${_supported_distros[2]}"
	["${_supported_distros[3]}"]="${_supported_distros[3]}"
	["${_supported_distros[4]}"]="opensuse/leap"
	["${_supported_distros[5]}"]="${_supported_distros[5]}"
	["${_supported_distros[3]}"]="voidlinux/voidlinux"
)

# Exports
_var_exports=(
	_multitux_registrydir
)
for _var in "${_var_exports[@]}"; do {
	export "$_var";
} done

# # Create env file if missing
# (
# 	for _envfile in "$_multitux_posix_envfile" "$_multitux_fish_envfile"; do {
# 		if test ! -e "$_envfile"; then {
# 			case "$_envfile" in
# 				"$_multitux_posix_envfile") # bash, ksh, zsh
# 					echo "export PATH=\"$_multitux_bindir:\$PATH\"" > "$_envfile";
# 				;;
# 				"$_multitux_fish_envfile") # fish
# 					echo "set PATH \"$_multitux_bindir\" \"\$PATH\" && export PATH" > "$_envfile";
# 				;;
# 			esac
# 		} fi
# 	} done
# ) &

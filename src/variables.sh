readonly _multitux_meta_name="Bashbox.meta";
# readonly _usemols_meta_name="Usemols.meta"
readonly _src_dir_name="src";
readonly _multitux_home="${HOME:-"${0%/*}"}/.bashbox" && mkdir -p "$_multitux_home";
readonly _multitux_registrydir="$_multitux_home/registry" && mkdir -p "$_multitux_registrydir";
readonly _multitux_bindir="$_multitux_home/bin" && mkdir -p "$_multitux_bindir";
readonly _multitux_posix_envfile="$_multitux_home/env";
readonly _multitux_fish_envfile="$_multitux_home/env.fish";
readonly _multitux_compat_var_name="BASHBOX_COMPAT";
readonly SUBCOMMANDS_DESC=(
	""
	"Create a new bashbox project"
	"Compile a bashbox project"
	"Cleanup target/ directories"
	"Install a bashbox project from repo"
	"Install bashbox into PATH"
);

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

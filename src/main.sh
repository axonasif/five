#####################
### Public functions
#####################
use variables;
# use utils;
use std::print::log;
use std::print::helpgen;
use std::term::colors;
use std::io::file::check_newline;
use argbash::common;
### Private functions
#####################
use subcommand;
use packages;

function print_help() {


	println::helpgen "${_self_name^^}" \
		--short-desc "\
Run multiple linux distros in Gitpod\
" \
		\
		--usage "\
${_self_name} [OPTIONAL-OPTIONS] [SUBCOMMAND] <subcommand-arguments>\
" \
		\
		--options-desc "\
-V, --version<^>Print version info and exit
-v, --verbose<^>Use very verbose output
-q, --quiet<^>No output printed to stdout
-h, --help<^>Prints this help information\
" \
		\
		--subcommands "\
parallel<^>${SUBCOMMANDS_DESC[1]}
compile<^>${SUBCOMMANDS_DESC[2]}
" \
		\
		--footer-msg "\
Try '${_self_name} <subcommand> --help' for more information on a specific command.
For bugreports: $___self_REPOSITORY\
";

}

function main() {
	#####################
	### Initialization
	#####################

	### Mutables
	_self_name="${___self##*/}";
	_arg_verbose=off;
	_arg_quiet=off;

	#####################
	### Start of arg parse
	#####################

	# Assign optional parent arguments
	# Drop/escape optional parent arguments
	# TODO: Needs review and improvement
	for _arg in "${@}"; do {
		# Doesnt contain `--`` and is a whole word with leading `-`
		if test "$_arg" != "--" && grep -E '\-\w+' <<<"$_arg" 1>/dev/null; then {
			case "$_arg" in
				# --)
				# 	break;
				# 	;;
				--verbose | -v)
					_arg_verbose=on;
					;;
				--quiet | -q)
					_arg_quiet=on;
					;;
				--version | -V)
					echo "$___self_VERSION";
					exit 0;
					;;
				--help | -h*)
					print_help && exit 0;
					;;
			esac
			shift;
		} else {
			break;
		} fi
	} done
	unset _arg;

	# for i in $(
	# 	a=$#;
	# 	until test $a -eq 0; do
	# 		echo $a;
	# 		((a--));
	# 	done
	# ); do {
	# 	echo "$i"
	# 	eval "echo \$$i" | grep -E 'verbose|quiet|offline' 1>/dev/null && {
	# 		set -- "${@:1:$i-1}" "${@:$i+1}";
	# 	}
	# } done
	# unset i;
	# TODO(LESSON): Dynamic argument parsing on bash is a nightmare. Well, at least for me on this script.

	#####################
	### Setup options
	#####################
	## Verbose
	# if test "$_arg_verbose" == on && test "$_arg_quiet" == off; then {
	# 	set -x;
	# } fi

	#####################
	### Main execution
	#####################
	_subcommand_argv="${1:-}" && shift || true;
	case "$_subcommand_argv" in
		parallel | compile)
			subcommand::$_subcommand_argv "$@";
			;;
		*)
			test -n "$_subcommand_argv" && log::warn "Unknown subcommand: $_subcommand_argv";
			print_help;
			test -n "$_subcommand_argv" && exit 1 || exit 0;
			;;
	esac

	exit;
}

function subcommand::compile()
{
	# THE DEFAULTS INITIALIZATION - POSITIONALS
	_positionals=()
	_arg_path=
	# THE DEFAULTS INITIALIZATION - OPTIONALS
	_arg_distro=
	_arg_type=
	# _arg_template=


	print_help()
	{

		println::helpgen "${_self_name^^}-${_subcommand_argv^^}" \
			--short-desc "\
${SUBCOMMANDS_DESC[1]}\
" \
	\
			--usage "\
${_self_name} ${_subcommand_argv} [OPTIONAL-OPTIONS] <path>\
" \
	\
			--options-desc "\
-c, --distro<^>Avoid directory-as-distro
-h, --help<^>Prints this help information\
" \
	\
			--examples "\
### The basic way:
${YELLOW}${_self_name} ${_subcommand_argv} awesome_project${RC}

### Pre-setting project distro, avoiding directory-path as distro:
${YELLOW}${_self_name} ${_subcommand_argv} --distro cake awesome_project${RC}

### Using a specific template for project initialization(core is default):
${YELLOW}${_self_name} ${_subcommand_argv} --template kernel awesome_project${RC}

### Random usage EXAMPLES just for referrence:
${YELLOW}${_self_name} ${_subcommand_argv} --template mesa graphics_lib
${_self_name} ${_subcommand_argv} --template=kernel vanilla_kernel --distro vkernel
${_self_name} ${_subcommand_argv} --distro=cakebaker foo/bakery${RC}\
"

	}


	parse_commandline()
	{
		_positionals_count=0
		while test $# -gt 0
		do
			_key="$1"
			case "$_key" in
				--distro|-c)
					test $# -lt 2 && log::error "Missing value for the optional argument '$_key'." 1 || exit;
					_arg_distro="$2"
					shift
					;;
				--distro=*)
					_arg_distro="${_key##--distro=}"
					;;
				--type|-t)
					test $# -lt 2 && log::error "Missing value for the optional argument '$_key'." 1 || exit;
					_arg_type="$2"
					shift
					;;
				--type=*)
					_arg_type="${_key##--type=}"
					;;
				-h|--help)
					print_help
					exit 0
					;;
				-h*)
					print_help
					exit 0
					;;
				*)
					_last_positional="$1"
					_positionals+=("$_last_positional")
					_positionals_count=$((_positionals_count + 1))
					;;
			esac
			shift
		done
	}


	handle_passed_args_count()
	{
		local _required_args_string="'path'"
		test "${_positionals_count}" -ge 1 \
		|| log::error "Not enough positional arguments " \
		"- we require exactly 1 (namely: $_required_args_string), but got only ${_positionals_count}." 1 || exit;
		test "${_positionals_count}" -le 1 \
		|| log::error "There were spurious positional arguments ---" \
		" we expect exactly 1 (namely: $_required_args_string), but got ${_positionals_count} (the last one was: '${_last_positional}')." 1 || exit;
	}


	assign_positional_args()
	{
		local _positional_name _shift_for=$1
		_positional_names="_arg_path "

		shift "$_shift_for"
		for _positional_name in ${_positional_names}
		do
			test $# -gt 0 || break
			eval "$_positional_name=\${1}" || log::error "Error during argument parsing." 1 || exit;
			shift
		done
	}

	parse_commandline "$@"
	handle_passed_args_count
	assign_positional_args 1 "${_positionals[@]}"

	## When no distro template is specified
	: "${_arg_distro:="ubuntu"}";
	## : "${_arg_template:="core"}"
	#_arg_distro="$(tr -d '[:space:]' <<<"${_arg_distro,,}")" # Make lowercase and trim whitespaces

	## When the distro dockerfile already exists
	if test -e "$_arg_path"; then {
		log::error "A dir as \`$_arg_path\` already exists." || :;
		log::info "Do you want to overwrite it? [y/N] \c";
		local _ans && read -n1 -r _ans;
		if test "${_ans,,}" == y; then {
			rm -r "$_arg_path";
			mkdir -p "$_arg_path";
		} else {
			exit 1;
		} fi
	} else {
		mkdir -p "$_arg_path";
	} fi

	## Verify if the specified distro is valid
	if [[ ! "${_supported_distros[@]}" =~ (^| )${_arg_distro%%=*}($| ) ]]; then {
		log::error "$_arg_distro is not supported" 1 || exit;
	} fi


	local _pkg _pkg_list;
	for _pkg in "${ALL_PACKAGES[@]}"; do {
		local -n _pkg_spec="$_pkg";
		_pkg_list+=("'${_pkg_spec[$_arg_distro]}'");
		unset _pkg_spec;
	} done


	### Pulling other modules
	use dockerfile_wrappers;
	use pkgman_wrappers;
	{
		use box::dockerfile;

	} 1> "$_arg_path/Dockerfile"

}

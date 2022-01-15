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
	if test -e "$_arg_path"; then
		log::error "A file as \`$_arg_path\` already exists." \
		"\t  Use a different path or name" 1 || exit;
	fi

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


function wrap_syndoc() {
	if test "$_arg_type" == "dockerfile"; then {
		printf "%s\n" "$@";
	} elif test "$_type" == "bashscript"; then {
		local _line && while read -r _line; do 
			case "${_line%% *}" in
				RUN)
					printf "${_line#* }\n";
				;;
				ENV)
					printf 'export "%s"\n' "${_line#* }";
				;;
				USER)
					true 'TODO: NEEDS WORK'
				;;
				COPY)
					true 'TODO: NEEDS WORK'
				;;
			esac
		done <<<"$@";
	} fi
}


	{
		wrap_syndoc \
		'ENV LANG=en_US.UTF-8' \
		\
		'COPY install-packages upgrade-packages /usr/bin/' \
		\
		"RUN upgrade-packages && install-packages ${_pkg_list[*]} \
		&& useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    		&& sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers \
		&& printf '%s\n' \"PS1='\[]0;\u \w\]\[[01;32m\]\u\[[00m\] \[[01;34m\]\w\[[00m\] \$ '\" \
		'source "$HOME/.bashrc.d"/*' | sudo -u gitpod tee -a "/home/gitpod/.bashrc" \
		&& sudo -u gitpod mkdir -m0755 -p /home/gitpod/.bashrc.d;" \
		\
		'ENV HOME=/home/gitpod' \
		\
		'WORKDIR $HOME'
		
	}

}

function subcommand::new()
{
	# THE DEFAULTS INITIALIZATION - POSITIONALS
	_positionals=()
	_arg_path=
	# THE DEFAULTS INITIALIZATION - OPTIONALS
	_arg_codename=
	# _arg_template=


	print_help()
	{
# 		printf '%s\n' "<The general help message of my script>"
# 		printf 'Usage: %s [--codename <arg>] [--template <arg>] [-h|--help] <path>\n' "$0"
# 		printf '\t%s\n' "-h, --help: Prints help"

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
-c, --codename<^>Avoid directory-as-codename
-h, --help<^>Prints this help information\
" \
	\
			--examples "\
### The basic way:
${YELLOW}${_self_name} ${_subcommand_argv} awesome_project${RC}

### Pre-setting project codename, avoiding directory-path as codename:
${YELLOW}${_self_name} ${_subcommand_argv} --codename cake awesome_project${RC}

### Using a specific template for project initialization(core is default):
${YELLOW}${_self_name} ${_subcommand_argv} --template kernel awesome_project${RC}

### Random usage EXAMPLES just for referrence:
${YELLOW}${_self_name} ${_subcommand_argv} --template mesa graphics_lib
${_self_name} ${_subcommand_argv} --template=kernel vanilla_kernel --codename vkernel
${_self_name} ${_subcommand_argv} --codename=cakebaker foo/bakery${RC}\
"

	}


	parse_commandline()
	{
		_positionals_count=0
		while test $# -gt 0
		do
			_key="$1"
			case "$_key" in
				--codename|-c)
					test $# -lt 2 && log::error "Missing value for the optional argument '$_key'." 1 || exit;
					_arg_codename="$2"
					shift
					;;
				--codename=*)
					_arg_codename="${_key##--codename=}"
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
		test "${_positionals_count}" -ge 1 || log::error "Not enough positional arguments - we require exactly 1 (namely: $_required_args_string), but got only ${_positionals_count}." 1 || exit;
		test "${_positionals_count}" -le 1 || log::error "There were spurious positional arguments --- we expect exactly 1 (namely: $_required_args_string), but got ${_positionals_count} (the last one was: '${_last_positional}')." 1 || exit;
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

# # 	: "${_arg_directory:="$PWD"}"
# # 	test ! -e "$_arg_directory" && log::error "$_arg_directory directory does not exist" 1
	
# # 	## When no codename is specified
# # 	if test -z "$_arg_codename"; then
# # 		gen_names="$(find "$_arg_directory" -maxdepth 1 -mindepth 1 -type d -name "awesome_project*" 2>/dev/null | wc -l)"
# # 		test "$gen_names" -gt 0 && : "${_arg_codename:="awesome_project$((gen_names + 1))"}" \
# # 			|| : "${_arg_codename:="awesome_project"}"
# # 	fi
	_path_codename="${_arg_path##*/}"
	## When no codename || template is specified
	: "${_arg_codename:="$_path_codename"}"
	## : "${_arg_template:="core"}"
	_arg_codename="$(tr -d '[:space:]' <<<"${_arg_codename,,}")" # Make lowercase and trim whitespaces

	## When the codename dir already exists
	if test -e "$_arg_path"; then
		log::error "Destination \`$_arg_path\` already exists.\n\t  You may either remove that project dir or use a different path for setup." 1 || exit;
	fi

	# ## Check if the $_arg_template is valid
	# if ! echo "$_arg_template" | grep -E 'core|mesa|kernel' 1>/dev/null; then {
	# 	log::error "$_arg_template is not a valid template.\n\t  core, kernel and mesa are the valid ones, so try again." 1
	# } fi

	## Finally setup the template as per inputs
	log::info "Setting up project at \`$_arg_path\`"
	mkdir -p "$_arg_path" || log::error "Failed to initialize the project directory" 1 || exit;

	# Create src dir and main.sh
	mkdir -p "$_arg_path/$_src_dir_name";
	cat << 'EOF' > "$_arg_path/$_src_dir_name/main.sh"
function main() {
	echo "Hello world";
}

EOF

	cat << EOF > "$_arg_path/$_multitux_meta_name"
NAME="$_path_codename"
CODENAME="$_arg_codename"
AUTHORS=("AXON <axonasif@gmail.com>")
VERSION="1.0"
DEPENDENCIES=()
REPOSITORY=""
BASHBOX_COMPAT="${___self_VERSION}~"
EOF

# 	rsync -a --exclude='.git' --exclude='.keep' "$TEMPLATES_DIR/$_arg_template/" "$PROJECTS_DIR/$_arg_codename" || exit

	# log::info "Resetting CODENAME metadata to $_arg_codename on $_multitux_meta_name"
	# sed -i "s|\bCODENAME=\".*\"|CODENAME=\"$_arg_codename\"|g" "$_arg_path/$_multitux_meta_name" \
	# 	|| { rm -r "$_arg_path"; log::error "Failed to reset CODENAME metadata on $_multitux_meta_name"; }

	log::info "Initializing git version control for your project"
	if command -v git 1>/dev/null; then
		git init "$_arg_path" 1>/dev/null || { _r=$?; rm -r "$_arg_path"; log::error "Failed to initialize git at \`$_arg_path\`" $_r || exit; }

		# Create .gitignore
		echo -e '/target' > "$_arg_path/.gitignore";

	else
		rm -r "$_arg_path"
		log::error "git does not seem to be available, please install it" 1 || exit;
	fi
}

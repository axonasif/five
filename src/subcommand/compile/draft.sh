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



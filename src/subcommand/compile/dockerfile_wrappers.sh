# WIP

function dockerfile::wrapper() {
	local _keyword="${FUNCNAME[1]}";
	local _input=("$@");

	case "$_arg_type" in
		dockerfile)
			case "$_keyword" in
				RUN)
					printf "$_keyword ";
					local _line;
					while read -r _line; do {
						echo "${_line}";
					} done
				;;
				*)
					echo "${_keyword} ${_input[@]}"
				;;
			esac
		;;
		shellscript)
			case "$_keyword" in
				ENV)
					printf 'export %s\n' "${_input[@]}";
				;;
				WORKDIR)
					printf 'cd %s\n' "${_input[@]}";
				;;
				LABEL)
					printf '# %s\n' "${_input[@]}";
				;;
				COPY)
					true 'TODO';
				;;
				USER)
					true 'TODO';
				;;
				RUN)
					local _line;
					while read -r _line; do {
						echo "${_line}";
					} done
				;;
				*)
					echo "${_input[@]}"
				;;
			esac
		;;
	esac
}

local _keyword;
for _keyword in COPY ENV LABEL RUN USER WORKDIR; do {
	eval "function ${_keyword}() { dockerfile::wrapper \"\$@\"; }";
} done

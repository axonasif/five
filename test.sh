one() {
	two() {
		# Upon calling two from three, two should print three
		echo "${FUNCNAME[1]}"
	}

	three() {
			two
		}
	four() {
			three
		}

	four
}

one


exit
_regex='[[0-9]+]?[[a-z]+]?[.]?'
# +[.]?-?_?[0-9]+[.]?-?_?
for _var in '2.before<#>' 'name' '<#>last' 'before<#>name<#>last' 'before<#>name||' '||name<#>last'; do {
	middle="${var#*<>}" && middle="${middle%*<>}"
	if [[ "$_var" =~ ${_regex}\<#\>$ ]]; then {
		echo "$BASH_REMATCH"
	} elif [[ ! "$_var" =~ \<#\> ]]; then {
		echo "$_var"
	} elif [[ "$_var" =~ ^\<#\> ]]; then {
		echo "$_var"
	} elif [[ "$_var" =~ .*\<#\>.*\<#\>.* ]]; then {
		echo "$_var"
	} elif [[ "$_var" =~ lol ]]; then {
		echo "$_var"
	} fi
} done

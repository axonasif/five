###### Image source
printf 'FROM %s:latest\n' "${_distro_image[$_arg_distro]}";

###### BASE
ENV LANG=en_US.UTF-8

COPY install-packages /usr/bin/ # What's below is not included in the result dockerfile
	printf '%s\n' "$(builtin declare -f 'pkgman::perform_tasks')" \
		"$(builtin declare -f "pkgman::$_arg_distro")" \
		"pkgman::$_arg_distro \"\$@\"" > "$_arg_path/install-packages";

# _pkg_list comes from src/subcommand/compile/mod.sh
RUN <<EOF
install-packages ${_pkg_list[@]} \
	&& useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    	&& sed -i.bak -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers \
	&& printf '%s\n' "PS1='\[]0;\u \w\]\[[01;32m\]\u\[[00m\] \[[01;34m\]\w\[[00m\] \$ '" \
		'source "\$HOME/.bashrc.d"/*' | sudo -u gitpod tee -a "/home/gitpod/.bashrc" \
	&& sudo -u gitpod mkdir -m0755 -p /home/gitpod/.bashrc.d
EOF

ENV HOME=/home/gitpod

WORKDIR \$HOME


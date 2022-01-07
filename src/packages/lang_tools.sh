### Basically C/C++
local GROUP="c_cpp_base";

declare -A autoconf=(
	[arch]="autoconf"
	[centos]="autoconf"
	[debian]="autoconf"
	[fedora]="autoconf"
	[opensuse]="autoconf"
	[ubuntu]="autoconf"
	[void]="autoconf"
)

declare -A automake=(
	[arch]="automake"
	[centos]="automake"
	[debian]="automake"
	[fedora]="automake"
	[opensuse]="automake"
	[ubuntu]="automake"
	[void]="automake"
)

declare -A make=(
	[arch]="make"
	[centos]="make"
	[debian]="make"
	[fedora]="make"
	[opensuse]="make"
	[ubuntu]="make"
	[void]="make"
)

declare -A libtool=(
	[arch]="libtool"
	[centos]="libtool"
	[debian]="libtool"
	[fedora]="libtool"
	[opensuse]="libtool"
	[ubuntu]="libtool"
	[void]="libtool"
)

declare -A g_plus_plus=(
	[arch]="g++"
	[centos]="g++"
	[debian]="g++"
	[fedora]="g++"
	[opensuse]="g++"
	[ubuntu]="g++"
	[void]="g++"
)
declare -A gcc=(
	[arch]="gcc"
	[centos]="gcc"
	[debian]="gcc"
	[fedora]="gcc"
	[opensuse]="gcc"
	[ubuntu]="gcc"
	[void]="gcc"
)

declare -A ninja_build=(
	[arch]="ninja"
	[centos]="ninja-build"
	[debian]="ninja-build"
	[fedora]="ninja-build"
	[opensuse]="ninja"
	[ubuntu]="ninja-build"
	[void]="ninja"
)

### Basically header files
local GROUP="c_cpp_headers";

declare -A libbz2_dev=(
	[arch]=""
	[centos]="bzip2-devel-1.0.8-9.fc35.i686"
	[debian]="libbz2-dev"
	[fedora]="bzip2-devel-1.0.8-9.fc35.i686"
	[opensuse]="" # Review
	[ubuntu]="libbz2-dev"
	[void]="bzip2-devel"
)

# TODO..... Lets focus on the main logic first.

# declare -A libc6_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libcurl4_openssl_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libdb_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libevent_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libffi_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libgdbm_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libglib2_0_dev=(
# 	[arch]="libglib2.0_dev"
# 	[centos]="libglib2.0_dev"
# 	[debian]="libglib2.0_dev"
# 	[fedora]="libglib2.0_dev"
# 	[opensuse]="libglib2.0_dev"
# 	[ubuntu]="libglib2.0_dev"
# 	[void]="libglib2.0_dev"
# )
# declare -A libgmp_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libjpeg_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libkrb5_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A liblzma_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libmagickcore_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libmagickwand_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libmaxminddb_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libncurses5_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libncursesw5_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libpng_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libpq_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libreadline_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libsqlite3_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libssl_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )

# declare -A libwebp_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libxml2_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libxslt_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )
# declare -A libyaml_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )

# declare -A zlib1g_dev=(
# 	[arch]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[void]="$_pkg"
# )

unset GROUP;
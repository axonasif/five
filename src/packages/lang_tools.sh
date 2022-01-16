### Basically C/C++
local GROUP="c_cpp_base";

declare -A autoconf=(
	[archlinux]="autoconf"
	[centos]="autoconf"
	[debian]="autoconf"
	[fedora]="autoconf"
	[opensuse]="autoconf"
	[ubuntu]="autoconf"
	[voidlinux]="autoconf"
)

declare -A automake=(
	[archlinux]="automake"
	[centos]="automake"
	[debian]="automake"
	[fedora]="automake"
	[opensuse]="automake"
	[ubuntu]="automake"
	[voidlinux]="automake"
)

declare -A make=(
	[archlinux]="make"
	[centos]="make"
	[debian]="make"
	[fedora]="make"
	[opensuse]="make"
	[ubuntu]="make"
	[voidlinux]="make"
)

declare -A libtool=(
	[archlinux]="libtool"
	[centos]="libtool"
	[debian]="libtool"
	[fedora]="libtool"
	[opensuse]="libtool"
	[ubuntu]="libtool"
	[voidlinux]="libtool"
)

declare -A g_plus_plus=(
	[archlinux]="g++"
	[centos]="g++"
	[debian]="g++"
	[fedora]="g++"
	[opensuse]="g++"
	[ubuntu]="g++"
	[voidlinux]="g++"
)
declare -A gcc=(
	[archlinux]="gcc"
	[centos]="gcc"
	[debian]="gcc"
	[fedora]="gcc"
	[opensuse]="gcc"
	[ubuntu]="gcc"
	[voidlinux]="gcc"
)

declare -A ninja_build=(
	[archlinux]="ninja"
	[centos]="ninja-build"
	[debian]="ninja-build"
	[fedora]="ninja-build"
	[opensuse]="ninja"
	[ubuntu]="ninja-build"
	[voidlinux]="ninja"
)

### Basically header files
local GROUP="c_cpp_headers";

declare -A libbz2_dev=(
	[archlinux]=""
	[centos]="bzip2-devel-1.0.8-9.fc35.i686"
	[debian]="libbz2-dev"
	[fedora]="bzip2-devel-1.0.8-9.fc35.i686"
	[opensuse]="" # Review
	[ubuntu]="libbz2-dev"
	[voidlinux]="bzip2-devel"
)

# TODO..... Lets focus on the main logic first.

# declare -A libc6_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libcurl4_openssl_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libdb_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libevent_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libffi_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libgdbm_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libglib2_0_dev=(
# 	[archlinux]="libglib2.0_dev"
# 	[centos]="libglib2.0_dev"
# 	[debian]="libglib2.0_dev"
# 	[fedora]="libglib2.0_dev"
# 	[opensuse]="libglib2.0_dev"
# 	[ubuntu]="libglib2.0_dev"
# 	[voidlinux]="libglib2.0_dev"
# )
# declare -A libgmp_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libjpeg_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libkrb5_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A liblzma_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libmagickcore_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libmagickwand_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libmaxminddb_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libncurses5_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libncursesw5_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libpng_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libpq_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libreadline_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libsqlite3_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libssl_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )

# declare -A libwebp_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libxml2_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libxslt_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )
# declare -A libyaml_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )

# declare -A zlib1g_dev=(
# 	[archlinux]="$_pkg"
# 	[centos]="$_pkg"
# 	[debian]="$_pkg"
# 	[fedora]="$_pkg"
# 	[opensuse]="$_pkg"
# 	[ubuntu]="$_pkg"
# 	[voidlinux]="$_pkg"
# )

unset GROUP;
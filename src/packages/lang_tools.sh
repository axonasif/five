### Basically C/C++
local GROUP="c_cpp_base";

declare -A autoconf=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A automake=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A make=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A libtool=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
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
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A ninja_build=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

### Basically header files
local GROUP="c_cpp_headers";

declare -A libbz2_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libc6_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libcurl4_openssl_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libdb_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libevent_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libffi_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libgdbm_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libglib2_0_dev=(
	[arch]="libglib2.0_dev"
	[centos]="libglib2.0_dev"
	[debian]="libglib2.0_dev"
	[fedora]="libglib2.0_dev"
	[opensuse]="libglib2.0_dev"
	[ubuntu]="libglib2.0_dev"
	[void]="libglib2.0_dev"
)
declare -A libgmp_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libjpeg_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libkrb5_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A liblzma_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libmagickcore_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libmagickwand_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libmaxminddb_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libncurses5_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libncursesw5_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libpng_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libpq_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libreadline_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libsqlite3_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libssl_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A libwebp_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libxml2_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libxslt_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)
declare -A libyaml_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

declare -A zlib1g_dev=(
	[arch]="$_pkg"
	[centos]="$_pkg"
	[debian]="$_pkg"
	[fedora]="$_pkg"
	[opensuse]="$_pkg"
	[ubuntu]="$_pkg"
	[void]="$_pkg"
)

unset GROUP;
# Usage: source ./setenv.sh

BLAZAR_SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
export BLAZAR_ROOT_DIR="$(cd "${BLAZAR_SCRIPTS_DIR}/.." && pwd)"
export BLAZAR_TOOLCHAIN_DIR="${BLAZAR_ROOT_DIR}/tools/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu"

if [ -x "${BLAZAR_TOOLCHAIN_DIR}/bin/aarch64-linux-gnu-gcc" ]; then
	export PATH="${BLAZAR_TOOLCHAIN_DIR}/bin:$PATH"
	export CROSS_COMPILE=aarch64-linux-gnu-
else
	echo "warning: aarch64 toolchain not found at ${BLAZAR_TOOLCHAIN_DIR}" >&2
	echo "warning: keep CROSS_COMPILE unset so build.sh can fall back to the default path" >&2
	unset CROSS_COMPILE
fi
export ARCH=arm64

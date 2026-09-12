# Usage: source ./setenv.sh

BLAZAR_ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
export BLAZAR_ROOT_DIR
export BLAZAR_TOOLCHAIN_DIR="$BLAZAR_ROOT_DIR/toolchains/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu"

export PATH="$BLAZAR_TOOLCHAIN_DIR/bin:$PATH"
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64

cd $CLFS_SRC

# Binutils
wget http://ftp.gnu.org/gnu/binutils/binutils-2.21.1a.tar.bz2

# Busybox
wget http://busybox.net/downloads/busybox-1.18.4.tar.bz2

# CLFS bootscripts
wget http://cross-lfs.org/files/packages/embedded-0.0.1/clfs-embedded-bootscripts-1.0-pre5.tar.bz2

# GCC
wget ftp://gcc.gnu.org/pub/gcc/releases/gcc-4.6.0/gcc-4.6.0.tar.bz2

# M4 - needed by GMP
wget http://ftp.gnu.org/gnu/m4/m4-1.4.17.tar.xz

# GMP
wget http://ftp.gnu.org/gnu/gmp/gmp-5.0.1.tar.bz2

# iana-etc
wget http://cross-lfs.org/files/packages/embedded-0.0.1/iana-etc-2.30.tar.bz2

# MPC
wget http://www.multiprecision.org/mpc/download/mpc-0.9.tar.gz

# MPFR
wget http://gforge.inria.fr/frs/download.php/27105/mpfr-3.0.0.tar.bz2

# uClibc
wget http://www.uclibc.org/downloads/uClibc-0.9.31.tar.bz2

# Kernel
git clone git://github.com/raspberrypi/linux.git

# Busybox patch
wget http://patches.cross-lfs.org/embedded-dev/busybox-1.18.4-config-1.patch

# iana-etc patch
wget http://patches.cross-lfs.org/embedded-dev/iana-etc-2.30-update-1.patch

# uClibc patch
wget http://patches.cross-lfs.org/embedded-dev/uClibc-0.9.31-configs-2.patch

cd $CLFS_FW

# Broadcom firmware
git clone git://github.com/raspberrypi/firmware.git

cd $CLFS_TOOLS

# Extra tools
git clone git://github.com/raspberrypi/tools.git

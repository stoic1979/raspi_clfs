# Clear compiler flags
unset CFLAGS
unset CXXFLAGS

# Set ABI
export CLFS_ABI=aapcs-linux

# Set host and target
export CLFS_HOST=$(echo ${MACHTYPE} | sed "s/-[^-]*/-cross/")
export CLFS_TARGET=arm-unknown-linux-uclibcgnueabi

# Set architecture and endianess
export CLFS_ARCH=arm
export CLFS_ENDIAN=little

# Set specific ARM architecture
export CLFS_ARM_ARCH=armv6zk
export CLFS_ARM_MODE=arm

# Set hw float of type vfp
export CLFS_FLOAT=hard
export CLFS_FPU=vfp

# Add to bashrc
echo unset CFLAGS >> ~/.bashrc
echo unset CXXFLAGS >> ~/.bashrc
echo export CLFS_ABI=\""${CLFS_ABI}\"" >> ~/.bashrc
echo export CLFS_HOST=\""${CLFS_HOST}\"" >> ~/.bashrc
echo export CLFS_TARGET=\""${CLFS_TARGET}\"" >> ~/.bashrc
echo export CLFS_ARCH=\""${CLFS_ARCH}\"" >> ~/.bashrc
echo export CLFS_ENDIAN=\""${CLFS_ENDIAN}\"" >> ~/.bashrc
echo export CLFS_ARM_ARCH=\""${CLFS_ARM_ARCH}\"" >> ~/.bashrc
echo export CLFS_ARM_MODE=\""${CLFS_ARM_MODE}\"" >> ~/.bashrc
echo export CLFS_FLOAT=\""${CLFS_FLOAT}\"" >> ~/.bashrc
echo export CLFS_FPU=\""${CLFS_FPU}\"" >> ~/.bashrc
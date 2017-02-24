# Create build directories
mkdir -pv ~/build/clfs/{sources,firmware,tools,cross-tools,rootfs}

export CLFS=$HOME/build/clfs/rootfs
export CLFS_SRC=$HOME/build/clfs/sources
export CLFS_FW=$HOME/build/clfs/firmware
export CLFS_TOOLS=$HOME/build/clfs/tools
export CLFS_CROSS_TOOLS=$HOME/build/clfs/cross-tools

# Make sure the environment is set up every time you log in
# Create a bash_profile
cat > ~/.bash_profile << "EOF"
exec env -i HOME=${HOME} TERM=${TERM} PS1='\u:\w\$ ' /bin/bash
EOF

# And a bashrc
cat > ~/.bashrc << "EOF"
set +h
umask 022
CLFS=$HOME/build/clfs/rootfs
CLFS_SRC=$HOME/build/clfs/sources
CLFS_FW=$HOME/build/clfs/firmware
CLFS_TOOLS=$HOME/build/clfs/tools
CLFS_CROSS_TOOLS=$HOME/build/clfs/cross-tools
LC_ALL=POSIX
PATH=${CLFS_CROSS_TOOLS}/bin:/bin:/usr/bin
export CLFS CLFS_SRC CLFS_FW CLFS_TOOLS CLFS_CROSS_TOOLS LC_ALL PATH
EOF
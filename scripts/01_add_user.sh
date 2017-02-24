# Add the clfs group
groupadd clfs

# Add the clfs user
useradd -s /bin/bash -g clfs -m -k /dev/null clfs

# Give clfs a password
passwd clfs

# Log in as the new user
su - clfs
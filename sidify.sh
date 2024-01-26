# Clear out sources file
truncate -s 0 /etc/apt/sources.list

# Add the unstable mirrors
echo "deb https://deb.debian.org/debian unstable main
deb https://deb.debian.org/debian unstable main" | tee /etc/apt/sources.list

# Update
apt update

# Upgrade
apt full-upgrade -y

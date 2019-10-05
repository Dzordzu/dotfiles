
name=''
if [ -z "$1" ]; then
   name="dzordzu"
else
   name=$1
fi

useradd -m $1
su $1

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

# Install base
trizen -Sy \
   base-devel \
   bluez 

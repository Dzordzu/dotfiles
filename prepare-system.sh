
name=''
if [ ! -z "$1" ]; then
   name="$1"
   useradd -m $1
   su $1
fi

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

# Install base
trizen -Sy \
   base-devel \
   bluez 


sudo pacman -Sy --no-confirm base-devel

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

# Install base
trizen -Sy \
   bluez 

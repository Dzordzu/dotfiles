
sudo pacman -Sy --noconfirm base-devel

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

# Install base
trizen -Sy --noconfirm \
   bluez \
   p7zip \
   gzip \
   tar

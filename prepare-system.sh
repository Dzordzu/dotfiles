
sudo pacman -Sy --noconfirm base-devel

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si --noconfirm

# Install base
trizen -Sy --noconfirm \
   perl-lwp-protocol-https \
   bluez \
   p7zip \
   gzip \
   tar

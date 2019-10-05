
sudo pacman -Sy --noconfirm base-devel

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si --noconfirm

# Install basic compression
trizen -Sy --noconfirm \
   perl-lwp-protocol-https \
   p7zip \
   gzip \
   tar

# Graphical stuff
trizen -Sy --noconfirm \
   sddm \
   xorg

sudo systemctl enable sddm
sudo systemctl start sddm

# Drivers support
trizen -Sy --noconfirm \
   bluez

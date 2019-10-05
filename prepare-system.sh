
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

# Drivers support
trizen -Sy --noconfirm \
   bluez

# Services
sudo systemctl enable sddm
sudo systemctl start sddm


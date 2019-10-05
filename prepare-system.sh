
sudo pacman -Sy --noconfirm base-devel

# Install trizen 
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si --noconfirm

# Install basic compression
trizen -Sy --noconfirm \
   p7zip \
   gzip \
   tar

# Graphical stuff
trizen -Sy --noconfirm \
   sddm \
   xorg \
   firefox \
   ttf-dejavu

# Drivers and protocols support
trizen -Sy --noconfirm \
   perl-lwp-protocol-https \
   openssh \
   bluez

# Services
sudo systemctl enable sddm
sudo systemctl start sddm


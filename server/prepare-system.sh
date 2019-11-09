
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

# Drivers and protocols support
trizen -Sy --noconfirm \
   perl-lwp-protocol-https \
   openssh \
   bluez

# Docker
trizen -Sy --noconfirm \
   docker \
   docker-compose \
   kubectl

# Langs
trizen -Sy --noconfirm \
   clang \
   go \
   ruby \
   cmake \
   rust \
   texlive-most

# Server
trizen -Sy --noconfirm \
   nginx 

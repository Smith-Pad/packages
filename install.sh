sudo pacman -S darkhttpd --noconfirm
sudo rm -rf /etc/pacman.conf
sudo touch /etc/pacman.conf
sudo cp -R pacman.conf /etc/
sudo mkdir /var/FAST
sudo cd /var/FAST
git clone https://github.com/Smith-Pad/packages .
sudo cp -R fast_repository.service /etc/systemd/system
sudo cp -R fast_repository.sh /usr/sbin
sudo systemctl enable fast_repository.service
clear
sudo reboot

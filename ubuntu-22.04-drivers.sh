sudo apt update && sudo apt upgrade -y
sudo apt install wget gnupg2 shell-scripts -y
sudo apt-get install shim-signed

#wget https://repo.radeon.com/amdgpu-install/6.2.4/ubuntu/jammy/amdgpu-install_6.2.60204-1_all.deb
wget https://repo.radeon.com/amdgpu-install/7.2.2/ubuntu/jammy/amdgpu-install_7.2.2.70202-1_all.deb
sudo chown -Rv _apt:root /var/cache/apt/archives/partial/
sudo chmod -Rv 700 /var/cache/apt/archives/partial/
sudo apt install ./amdgpu-install_*.deb -y

sudo amdgpu-install --rocmrelease=6.2.4 --usecase=rocm,hiplibsdk -y
sudo amdgpu-install --usecase=rocm,hiplibsdk --no-dkms --rocmrelease=6.2.4 -y
amdgpu-install -y --usecase=graphics -y

sudo apt install linux-headers-$(uname -r)
sudo apt install amdgpu-dkms

sudo apt update
sudo apt install python3-setuptools python3-wheel -y
sudo usermod -a -G video,render root
sudo groupadd devteam
sudo usermod -a -G devteam root
sudo usermod -a -G render root
sudo usermod -a -G video root
sudo udevadm control --reload-rules && sudo udevadm trigger
rocminfo
rocm-smi
rocm-smi --showtopo
sudo reboot


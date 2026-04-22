# c845-amd-drivers

ROCM drivers installation, this repository will help to install amdgpu Drivers,

1.Clone the repository in your Ubuntu server
```
git clone https://github.com/cpoc-internal/c845-amd-drivers.git
```
2. ROOT mode excute the sh file to install the drivers
```
chmod +x /root/c845-amd-drivers/ubuntu-22.04-drivers.sh
sudo -u root /root/c845-amd-drivers/ubuntu-22.04-drivers.sh
```
2.1 NOn ROOT
```
git clone https://github.com/cpoc-internal/c845-amd-drivers.git
cd c845-amd-drivers
chmod +x ubuntu-22.04-drivers.sh
 ./ubuntu-22.04-drivers.sh
```
3. Create new netplan config for UCS C885 H200 or AMD server persistent config, it will configure backend and frontend

Server 1
```
 chmod +x netplan-config-1.sh
 ./netplan-config-1.sh
```

Server 2
```
 chmod +x netplan-config-2.sh
 ./netplan-config-2.sh
```

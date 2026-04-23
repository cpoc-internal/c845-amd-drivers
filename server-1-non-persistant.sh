sudo ip addr add 192.168.200.5/24 dev ens10f0np0
sudo ip link set dev ens10f0np0 up
sudo ip link set dev ens10f0np0 mtu 9216

sudo ip addr add 192.168.200.6/24 dev ens32f0np0
sudo ip link set dev ens32f0np0 up
sudo ip link set dev ens32f0np0 mtu 9216

sudo ip addr add 192.168.200.7/24 dev ens12f0np0
sudo ip link set dev ens12f0np0 up
sudo ip link set dev ens12f0np0 mtu 9216

sudo ip addr add 192.168.200.8/24 dev ens11f0np0
sudo ip link set dev ens11f0np0 up
sudo ip link set dev ens11f0np0 mtu 9216

sudo ip addr add 10.10.0.5/24 dev enp41s0f0np0
sudo ip link set dev enp41s0f0np0 up
sudo ip link set dev enp41s0f0np0 mtu 9216

sudo ip addr add 10.10.0.6/24 dev enp41s0f1np1
sudo ip link set dev enp41s0f1np1 up
sudo ip link set dev enp41s0f1np1 mtu 9216

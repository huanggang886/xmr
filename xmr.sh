sudo apt-get --assume-yes update

sudo apt-get --assume-yes upgrade

sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano htop wget curl

apt install -y cpulimit

sysctl -w vm.nr_hugepages=128

sed -i '1s/^/vm.nr_hugepages=128\n/' /etc/sysctl.conf

echo '* soft memlock 262144' >> /etc/security/limits.conf

echo '* hard memlock 262144' >> /etc/security/limits.conf

git clone https://github.com/fireice-uk/xmr-stak.git

cd xmr-stak/

cmake . -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF

make install

cd bin/

./xmr-stak  #运行程序

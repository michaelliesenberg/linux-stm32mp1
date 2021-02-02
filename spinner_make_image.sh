sudo ARCH=arm CROSS_COMPILE=/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make spinner.config
sudo ARCH=arm CROSS_COMPILE=/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make dtbs
sudo ARCH=arm CROSS_COMPILE=/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make zImage
sudo ARCH=arm CROSS_COMPILE=/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make modules
sudo ARCH=arm CROSS_COMPILE=/opt/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin/arm-linux-gnueabihf- make INSTALL_MOD_PATH="/home/debian/work/ROOTFS_STM" modules_install

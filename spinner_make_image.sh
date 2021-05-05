#sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make savedefconfig
#cp defconfig arch/arm/configs/spinner
sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make clean
sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make arch/arm/configs/spinner
sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make dtbs
sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make zImage
#sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make modules
sudo rm -rf /home/debian/work/ROOTFS_STM/lib/modules/*
#sudo ARCH=arm CROSS_COMPILE=/home/debian/work/gcc-arm-10.2-2020.11-x86_64-arm-none-linux-gnueabihf/bin/arm-none-linux-gnueabihf- make INSTALL_MOD_PATH="/home/debian/work/ROOTFS_STM" modules_install
sudo cp -av arch/arm/boot/zImage /home/debian/work/bootfs
sudo cp -av arch/arm/boot/dts/stm32mp157c-spinner.dtb /home/debian/bootfs

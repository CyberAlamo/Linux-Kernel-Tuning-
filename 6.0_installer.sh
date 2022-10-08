//kernel customization script
//maxwell seefeld
//less complex remake of script I made junior year of high school
//installs 6.0 kernel on Debian based linux systems
#!/bin/bash
sudo apt-get update
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex bison grub2-common libelf-dev live-tools
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.0.tar.xz
tar xf linux-6.0.tar.xz
cd linux-6.0
make menuconfig
sudo make -j 4 && sudo make modules_install -j 4 && sudo make install -j 4
update-initramfs -c -k 6.0
update-grub  

#########################################################################
# File Name: rootfs.sh
# Author: linhaidong
# Mail:   linengier@126.com
# Time:  2019年11月22日 星期五 16时06分27秒
# Abstract: 
#########################################################################
#!/bin/sh
if [ $1 == "build" ]; then
    mkdir -p rootfs/{dev,lib}
    cp -fr ~/busybox-1.31.1/_install/* rootfs/
    cp -fr /usr/arm-linux-gnueabi/lib/* rootfs/lib/
    cp -fr etc  rootfs/
    cp -fr iptables/sbin/* rootfs/sbin/
    cp -fr iptables/lib/* rootfs/lib
    cd ./rootfs/dev/
    echo $PWD
    sudo mknod -m 666 tty1 c 4 1
    sudo mknod -m 666 tty2 c 4 2
    sudo mknod -m 666 tty3 c 4 3
    sudo mknod -m 666 tty4 c 4 4
    sudo mknod -m 666 console c 5 1
    sudo mknod -m 666 null  c 1 3
    cd ../../
    dd if=/dev/zero of=rootfs.ext3 bs=1M count=100
    mkfs.ext3 rootfs.ext3
    sudo mount -t ext3 rootfs.ext3 /mnt/ -o loop
    sudo cp -fr ./rootfs/* /mnt/
    sudo umount /mnt/
elif [ $1 == "rm" ]; then
    rm -fr rootfs
    rm -fr rootfs.ext3
elif [ $1 == "run" ]; then
    qemu-system-arm -M vexpress-a9 -smp 4 -m 512M -dtb ../runninglinuxkernel_4.0/arch/arm/boot/dts/vexpress-v2p-ca9.dtb \
    -kernel ../runninglinuxkernel_4.0/arch/arm/boot/zImage \
    -append "root=/dev/mmcblk0 rw console=ttyAMA0i,115200" -sd rootfs.ext3 -nographic
fi

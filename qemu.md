1. 根文件系统
    busybox 动态链接
    内核文件系统 initramfs
    sdka制作rootfs
    启动脚本
3. 编译内核
2. linuxrc init进程启动


qemu运行的时候 只显示ucompress linux kernel 后面pr_notice的数据都没有了。
主要是传递给内核的参数不对
qemu-system-arm -kernel linux-rpi-4.1.y/arch/arm/boot/zImage -cpu arm1176 -m 256 -M versatilepb  -serial stdio  -append  "root=/dev/sda console=ttyAMA0,115200 console=tty  highres=off console=ttyS0 rootfstype=ext4" -hda 2013pi.ext4

参数要有 console=ttyAMA0,115200 
如果不能输出尝试不同的console=命令
console=tty   console=ttyS0
 -serial stdio 指定输出到 标准stdio
还可以输出到文件
-serial file:/home/xxxxx/a.txt


busybox取消了runlevels,runlevels已经被busybox的init进程忽略。如果想使用runlevels，就使用sysvinit来代替。
每个入口的格式：<id>:<runlevels>:<action>:<process>
<id>: busybox的这个参数不是常规意义上的<id>，它是指指定进程运行的tty。其内容是/dev下的tty设备或者别名。这个字段留空表示忽略。指定错误，会得到异常。
<runlevels>: 被完全忽略，只需留空.
<action>: 有效的actions包括: sysinit, respawn, askfirst, wait,once,restart,ctrlaltdel, and shutdown.
askfirst和respawn类似，只是在运行进程前，先打印一句"Please press Enter to activate this console."等待用户敲入回车后再执行。
不能识别的<action>将导致init发送错误信号，并继续执行(只提示错误)。
<process>: 指定执行的进程和它的命令行。

如果busybox没有inittab也不影响，它将默认按以下处理：
::sysinit:/etc/init.d/rcS
::askfirst:/bin/sh
::ctrlaltdel:/sbin/reboot
::shutdown:/sbin/swapoff -a
::shutdown:/bin/umount -a -r
::restart:/sbin/init
如果发现/dev/console不是一个串口设备，将执行：
tty2::askfirst:/bin/sh
tty3::askfirst:/bin/sh
tty4::askfirst:/bin/sh

在shell前加一个'-'前缀表示是一个登陆shell,比如：
::askfirst:-/bin/sh；也可以指定登陆到哪个tty,比如：
tty2::askfirst:-/bin/sh
tty3::askfirst:-/bin/sh
tty4::askfirst:-/bin/sh
/sbin/getty可以指定选择某个tty.比如：
tty4::respawn:/sbin/getty 38400 tty5   /*  /sbin/getty 波特率 tty号  */
将串口输出到终端：
#::respawn:/sbin/getty -L ttyS0 9600 vt100
串口输出到modem：
#::respawn:/sbin/getty 57600 ttyS2

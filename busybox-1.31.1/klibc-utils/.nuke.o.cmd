cmd_klibc-utils/nuke.o := arm-linux-gnueabi-gcc -Wp,-MD,klibc-utils/.nuke.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.31.1)"  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os -fpic -fvisibility=hidden     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(nuke)"  -D"KBUILD_MODNAME=KBUILD_STR(nuke)" -c -o klibc-utils/nuke.o klibc-utils/nuke.c

deps_klibc-utils/nuke.o := \
  klibc-utils/nuke.c \
    $(wildcard include/config/nuke.h) \
  /usr/arm-linux-gnueabi/include/stdc-predef.h \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/verbose.h) \
    $(wildcard include/config/feature/etc/services.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/float/duration.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/syslog/info.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/ash.h) \
    $(wildcard include/config/sh/is/ash.h) \
    $(wildcard include/config/bash/is/ash.h) \
    $(wildcard include/config/hush.h) \
    $(wildcard include/config/sh/is/hush.h) \
    $(wildcard include/config/bash/is/hush.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/test1.h) \
    $(wildcard include/config/test2.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/killall5.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/feature/setpriv/capabilities.h) \
    $(wildcard include/config/run/init.h) \
    $(wildcard include/config/feature/securetty.h) \
    $(wildcard include/config/pam.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/clean/up.h) \
    $(wildcard include/config/feature/devfs.h) \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include-fixed/limits.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include-fixed/syslimits.h \
  /usr/arm-linux-gnueabi/include/limits.h \
  /usr/arm-linux-gnueabi/include/bits/libc-header-start.h \
  /usr/arm-linux-gnueabi/include/features.h \
  /usr/arm-linux-gnueabi/include/sys/cdefs.h \
  /usr/arm-linux-gnueabi/include/bits/wordsize.h \
  /usr/arm-linux-gnueabi/include/bits/long-double.h \
  /usr/arm-linux-gnueabi/include/gnu/stubs.h \
  /usr/arm-linux-gnueabi/include/gnu/stubs-soft.h \
  /usr/arm-linux-gnueabi/include/bits/posix1_lim.h \
  /usr/arm-linux-gnueabi/include/bits/local_lim.h \
  /usr/arm-linux-gnueabi/include/linux/limits.h \
  /usr/arm-linux-gnueabi/include/bits/posix2_lim.h \
  /usr/arm-linux-gnueabi/include/bits/xopen_lim.h \
  /usr/arm-linux-gnueabi/include/bits/uio_lim.h \
  /usr/arm-linux-gnueabi/include/byteswap.h \
  /usr/arm-linux-gnueabi/include/bits/byteswap.h \
  /usr/arm-linux-gnueabi/include/bits/types.h \
  /usr/arm-linux-gnueabi/include/bits/typesizes.h \
  /usr/arm-linux-gnueabi/include/bits/byteswap-16.h \
  /usr/arm-linux-gnueabi/include/endian.h \
  /usr/arm-linux-gnueabi/include/bits/endian.h \
  /usr/arm-linux-gnueabi/include/bits/uintn-identity.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include/stdint.h \
  /usr/arm-linux-gnueabi/include/stdint.h \
  /usr/arm-linux-gnueabi/include/bits/wchar.h \
  /usr/arm-linux-gnueabi/include/bits/stdint-intn.h \
  /usr/arm-linux-gnueabi/include/bits/stdint-uintn.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include/stdbool.h \
  /usr/arm-linux-gnueabi/include/unistd.h \
  /usr/arm-linux-gnueabi/include/bits/posix_opt.h \
  /usr/arm-linux-gnueabi/include/bits/environments.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include/stddef.h \
  /usr/arm-linux-gnueabi/include/bits/confname.h \
  /usr/arm-linux-gnueabi/include/bits/getopt_posix.h \
  /usr/arm-linux-gnueabi/include/bits/getopt_core.h \
  /usr/arm-linux-gnueabi/include/bits/unistd.h \
  /usr/arm-linux-gnueabi/include/ctype.h \
  /usr/arm-linux-gnueabi/include/bits/types/locale_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/__locale_t.h \
  /usr/arm-linux-gnueabi/include/dirent.h \
  /usr/arm-linux-gnueabi/include/bits/dirent.h \
  /usr/arm-linux-gnueabi/include/errno.h \
  /usr/arm-linux-gnueabi/include/bits/errno.h \
  /usr/arm-linux-gnueabi/include/linux/errno.h \
  /usr/arm-linux-gnueabi/include/asm/errno.h \
  /usr/arm-linux-gnueabi/include/asm-generic/errno.h \
  /usr/arm-linux-gnueabi/include/asm-generic/errno-base.h \
  /usr/arm-linux-gnueabi/include/fcntl.h \
  /usr/arm-linux-gnueabi/include/bits/fcntl.h \
  /usr/arm-linux-gnueabi/include/bits/fcntl-linux.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_iovec.h \
  /usr/arm-linux-gnueabi/include/linux/falloc.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_timespec.h \
  /usr/arm-linux-gnueabi/include/bits/stat.h \
  /usr/arm-linux-gnueabi/include/bits/fcntl2.h \
  /usr/arm-linux-gnueabi/include/inttypes.h \
  /usr/arm-linux-gnueabi/include/netdb.h \
  /usr/arm-linux-gnueabi/include/netinet/in.h \
  /usr/arm-linux-gnueabi/include/sys/socket.h \
  /usr/arm-linux-gnueabi/include/bits/socket.h \
  /usr/arm-linux-gnueabi/include/sys/types.h \
  /usr/arm-linux-gnueabi/include/bits/types/clock_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/clockid_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/time_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/timer_t.h \
  /usr/arm-linux-gnueabi/include/sys/select.h \
  /usr/arm-linux-gnueabi/include/bits/select.h \
  /usr/arm-linux-gnueabi/include/bits/types/sigset_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/__sigset_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_timeval.h \
  /usr/arm-linux-gnueabi/include/bits/select2.h \
  /usr/arm-linux-gnueabi/include/sys/sysmacros.h \
  /usr/arm-linux-gnueabi/include/bits/sysmacros.h \
  /usr/arm-linux-gnueabi/include/bits/pthreadtypes.h \
  /usr/arm-linux-gnueabi/include/bits/thread-shared-types.h \
  /usr/arm-linux-gnueabi/include/bits/pthreadtypes-arch.h \
  /usr/arm-linux-gnueabi/include/bits/socket_type.h \
  /usr/arm-linux-gnueabi/include/bits/sockaddr.h \
  /usr/arm-linux-gnueabi/include/asm/socket.h \
  /usr/arm-linux-gnueabi/include/asm-generic/socket.h \
  /usr/arm-linux-gnueabi/include/asm/sockios.h \
  /usr/arm-linux-gnueabi/include/asm-generic/sockios.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_osockaddr.h \
  /usr/arm-linux-gnueabi/include/bits/socket2.h \
  /usr/arm-linux-gnueabi/include/bits/in.h \
  /usr/arm-linux-gnueabi/include/rpc/netdb.h \
  /usr/arm-linux-gnueabi/include/bits/types/sigevent_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/__sigval_t.h \
  /usr/arm-linux-gnueabi/include/bits/netdb.h \
  /usr/arm-linux-gnueabi/include/setjmp.h \
  /usr/arm-linux-gnueabi/include/bits/setjmp.h \
  /usr/arm-linux-gnueabi/include/bits/setjmp2.h \
  /usr/arm-linux-gnueabi/include/signal.h \
  /usr/arm-linux-gnueabi/include/bits/signum.h \
  /usr/arm-linux-gnueabi/include/bits/signum-generic.h \
  /usr/arm-linux-gnueabi/include/bits/types/sig_atomic_t.h \
  /usr/arm-linux-gnueabi/include/bits/types/siginfo_t.h \
  /usr/arm-linux-gnueabi/include/bits/siginfo-arch.h \
  /usr/arm-linux-gnueabi/include/bits/siginfo-consts.h \
  /usr/arm-linux-gnueabi/include/bits/siginfo-consts-arch.h \
  /usr/arm-linux-gnueabi/include/bits/types/sigval_t.h \
  /usr/arm-linux-gnueabi/include/bits/sigevent-consts.h \
  /usr/arm-linux-gnueabi/include/bits/sigaction.h \
  /usr/arm-linux-gnueabi/include/bits/sigcontext.h \
  /usr/arm-linux-gnueabi/include/asm/sigcontext.h \
  /usr/arm-linux-gnueabi/include/bits/types/stack_t.h \
  /usr/arm-linux-gnueabi/include/sys/ucontext.h \
  /usr/arm-linux-gnueabi/include/bits/sigstack.h \
  /usr/arm-linux-gnueabi/include/bits/ss_flags.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_sigstack.h \
  /usr/arm-linux-gnueabi/include/bits/sigthread.h \
  /usr/arm-linux-gnueabi/include/paths.h \
  /usr/arm-linux-gnueabi/include/stdio.h \
  /usr/arm-linux-gnueabi/include/bits/types/__FILE.h \
  /usr/arm-linux-gnueabi/include/bits/types/FILE.h \
  /usr/arm-linux-gnueabi/include/bits/libio.h \
  /usr/arm-linux-gnueabi/include/bits/_G_config.h \
  /usr/arm-linux-gnueabi/include/bits/types/__mbstate_t.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/5/include/stdarg.h \
  /usr/arm-linux-gnueabi/include/bits/stdio_lim.h \
  /usr/arm-linux-gnueabi/include/bits/sys_errlist.h \
  /usr/arm-linux-gnueabi/include/bits/stdio2.h \
  /usr/arm-linux-gnueabi/include/stdlib.h \
  /usr/arm-linux-gnueabi/include/bits/waitflags.h \
  /usr/arm-linux-gnueabi/include/bits/waitstatus.h \
  /usr/arm-linux-gnueabi/include/bits/floatn.h \
  /usr/arm-linux-gnueabi/include/bits/floatn-common.h \
  /usr/arm-linux-gnueabi/include/alloca.h \
  /usr/arm-linux-gnueabi/include/bits/stdlib-float.h \
  /usr/arm-linux-gnueabi/include/bits/stdlib.h \
  /usr/arm-linux-gnueabi/include/string.h \
  /usr/arm-linux-gnueabi/include/strings.h \
  /usr/arm-linux-gnueabi/include/bits/strings_fortified.h \
  /usr/arm-linux-gnueabi/include/bits/string_fortified.h \
  /usr/arm-linux-gnueabi/include/libgen.h \
  /usr/arm-linux-gnueabi/include/poll.h \
  /usr/arm-linux-gnueabi/include/sys/poll.h \
  /usr/arm-linux-gnueabi/include/bits/poll.h \
  /usr/arm-linux-gnueabi/include/bits/poll2.h \
  /usr/arm-linux-gnueabi/include/sys/ioctl.h \
  /usr/arm-linux-gnueabi/include/bits/ioctls.h \
  /usr/arm-linux-gnueabi/include/asm/ioctls.h \
  /usr/arm-linux-gnueabi/include/asm-generic/ioctls.h \
  /usr/arm-linux-gnueabi/include/linux/ioctl.h \
  /usr/arm-linux-gnueabi/include/asm/ioctl.h \
  /usr/arm-linux-gnueabi/include/asm-generic/ioctl.h \
  /usr/arm-linux-gnueabi/include/bits/ioctl-types.h \
  /usr/arm-linux-gnueabi/include/sys/ttydefaults.h \
  /usr/arm-linux-gnueabi/include/sys/mman.h \
  /usr/arm-linux-gnueabi/include/bits/mman.h \
  /usr/arm-linux-gnueabi/include/bits/mman-linux.h \
  /usr/arm-linux-gnueabi/include/bits/mman-shared.h \
  /usr/arm-linux-gnueabi/include/sys/resource.h \
  /usr/arm-linux-gnueabi/include/bits/resource.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_rusage.h \
  /usr/arm-linux-gnueabi/include/sys/stat.h \
  /usr/arm-linux-gnueabi/include/sys/time.h \
  /usr/arm-linux-gnueabi/include/sys/wait.h \
  /usr/arm-linux-gnueabi/include/termios.h \
  /usr/arm-linux-gnueabi/include/bits/termios.h \
  /usr/arm-linux-gnueabi/include/time.h \
  /usr/arm-linux-gnueabi/include/bits/time.h \
  /usr/arm-linux-gnueabi/include/bits/timex.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_tm.h \
  /usr/arm-linux-gnueabi/include/bits/types/struct_itimerspec.h \
  /usr/arm-linux-gnueabi/include/sys/param.h \
  /usr/arm-linux-gnueabi/include/bits/param.h \
  /usr/arm-linux-gnueabi/include/linux/param.h \
  /usr/arm-linux-gnueabi/include/asm/param.h \
  /usr/arm-linux-gnueabi/include/asm-generic/param.h \
  /usr/arm-linux-gnueabi/include/pwd.h \
  /usr/arm-linux-gnueabi/include/grp.h \
  /usr/arm-linux-gnueabi/include/mntent.h \
  /usr/arm-linux-gnueabi/include/sys/statfs.h \
  /usr/arm-linux-gnueabi/include/bits/statfs.h \
  /usr/arm-linux-gnueabi/include/utmp.h \
  /usr/arm-linux-gnueabi/include/bits/utmp.h \
  /usr/arm-linux-gnueabi/include/utmpx.h \
  /usr/arm-linux-gnueabi/include/bits/utmpx.h \
  /usr/arm-linux-gnueabi/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \

klibc-utils/nuke.o: $(deps_klibc-utils/nuke.o)

$(deps_klibc-utils/nuke.o):

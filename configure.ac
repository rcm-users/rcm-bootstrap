AC_PREREQ([2.69])
AC_INIT(rcm-bootstrap, 0.0.1, badevins@gmail.com)
AM_INIT_AUTOMAKE([subdir-objects])

# /bin/sh on Solaris is not POSIX, so try to find another one.
case "$host_os" in
solaris*)
    AC_PATH_PROGS(POSIX_SHELL, [ksh93 ksh sh])
    SHELL="$POSIX_SHELL"
    ;;
esac
AC_SUBST([SHELL])

AC_OUTPUT(Makefile bin/bootstrap)
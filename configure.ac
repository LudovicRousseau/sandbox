dnl Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])

AC_INIT([sandbox],[1.0.0])
AC_CONFIG_SRCDIR([README.md])
AM_INIT_AUTOMAKE([1.8 dist-bzip2 no-dist-gzip foreign])

dnl create a config.h file (Automake will add -DHAVE_CONFIG_H)
AC_CONFIG_HEADERS([config.h])

AC_SUBST(VERSION)

m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_CANONICAL_HOST

dnl Checks for programs.
AC_PROG_INSTALL
AC_PROG_CC

# --disable-gettext
AC_ARG_ENABLE(gettext,
    AS_HELP_STRING([--disable-gettext],[do not use gettext]),
    [ use_gettext="${enableval}" ], [ use_gettext=yes ] )

if test "x$use_gettext" != xno ; then
    AC_CHECK_PROG([found_msgfmt], [msgfmt], [yes])
    if test x$found_msgfmt != xyes; then
      AC_MSG_WARN([msgfmt not found. Please install gettext])
      use_gettext=no
    fi
fi
AM_CONDITIONAL(WITH_GETTEXT, test "${use_gettext}" != "no")

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

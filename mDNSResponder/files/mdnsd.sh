#!/bin/sh
#
# $NetBSD: mdnsd,v 1.3 2015/10/15 16:47:28 roy Exp $
#

# PROVIDE: mdnsd
# REQUIRE: NETWORKING
# BEFORE:  mountcritremote

$_rc_subr_loaded . /etc/rc.subr

name="mdnsd"
rcvar=$name
command="/usr/pkg/sbin/$name"
pidfile="/var/run/${name}.pid"
start_precmd="mdnsd_precmd"

mdnsd_precmd()
{
    rm -rf /var/run/mdnsd
}
                                                        
load_rc_config $name
run_rc_command "$1"

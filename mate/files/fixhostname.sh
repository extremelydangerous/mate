#!/bin/sh
#
# PROVIDE: fixhostname
# REQUIRE: root

. /etc/rc.subr

name="fixhosntame"
start_cmd=fixhostname_start

fixhostname_start() {
	echo Mate fixes .....
	rm -rf /media/*
	mkdir -m 1777 -p /media
	echo fix /etc/hosts
	sed -e "/^127\.0\.0\.1/s/127.0.0.1.*/127.0.0.1	localhost $(hostname) $(hostname -s)/" /etc/hosts > /etc/hosts.bak
	mv /etc/hosts.bak /etc/hosts
	echo DONE
}

load_rc_config $name
run_rc_command "$1"

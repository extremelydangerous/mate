all:mk.conf

mk.conf: /etc/mk.conf
	cvs up
	cp $> $@
	cvs commit

.include "../Makefile"

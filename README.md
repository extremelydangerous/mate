This is mate-desktop http://mate-desktop.org pkgsrc My version of.. 
this version is built in a way that ALL of mate desktop, including gdm 2.20 (the last usable version) is in the same directory.

All you have to do is to create a "mate" directory in the /usr/pkgsrc, jump into /usr/pkgsrc/mate/mate and do a make install
some packages ex: caja  will complain about Mesalibs, the solution is to jump into /usr/pkgsrc/mate/caja  and do a make clean;make from within the directory, this will "make" the package. Another "make install"  from /usr/pkgsrc/mate/mate, installs and contiue
together is the file /etc/mk.conf that MUST be configured to your needs<br>
<br>
If you cannot clone this, than type git config --global http.sslVerify false<br>
this will make git access your fake certificate
<br>
<br>
This directory is to be put under /usr/pkgsr, than cd /usr/pkgsrc/mate; once there, sh bin/makelinks<br>
this will search all the pkgsrc tree and will make links for the mate applications and all patches<br>
to the /usr/pkgsrc/mate, and save the orginals in /usr/pkgsrc.save<br>
than a command cd /usr/pkgsrc/mate/make<br>
make isntall will do the "trick"

To add files:<br>
git commit -am "comment"<br>
git push origin master

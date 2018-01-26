This is mate-desktop http://mate-desktop.org pkgsrc My version of.. 
this version is built in a way that ALL of mate desktop, including gdm 2.20 (the last usable version) is in the same directory.

All you have to do is to create a "mate" directory in the /usr/pkgsrc, jump into /usr/pkgsrc/mate/mate and do a make install
some packages ex: caja  will complain about Mesalibs, the solution is to jump into /usr/pkgsrc/mate/caja  and do a make clean;make from within the directory, this will "make" the package. Another "make install"  from /usr/pkgsrc/mate/mate, installs and contiue
together is the file /etc/mk.conf that MUST be configured to your needs

To add files:<br>
git commit -am "comment"<br>
git push origin master

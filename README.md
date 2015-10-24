# salt-stack-examples
A repo of Salt stack examples, I will be using over various talks.

## How to use this repo

1. I have only uploaded the srv folder, where I keep all the sls, shell and the relative virtualevn requirements file.
2. For the above sls to work, you should open the master config in /etc/salt/master and enabled a config called file_roots and set it to /srv/salt
3. You should also have minions pointing to the correct master.
4. I use httpd(apache) as the webserver. The default path for httpd is /var/www/html/
5. All the rpm I serve with be download via a yum plugin called yum-downloadonly
6. yum install yum-downloadonly createrepo httpd
7. cd /var/www/html
8. mkdir packages
9. cd packages
10. yum install your-list-of-pacakages --downloadonly --downloaddir=/var/www/html/packages/
11. createrepo .
12. At this point the repo called packages will be created. Please do change the ip in demo1.sls to your actual master or whereever the httpd service is running. Esle, I wont work, just like it didnt today.
13. cd ../ && mkdir tars
14. you can use the tars folder to actually keep all the tar.gz file to be served for un-zipping or whatever you want to do with this.
15. The whole point is, except for the repo, everything else can be arranged as you wish. You can have the shell and the virtualenv folder served through httpd or the tars served through the salt using salt://tars/tar-file-name.tar.gz It up to you to configure it the way you like
16. But like a college grad, dont mix up everything and put everything in one folder. It might work, but not the best practise. Keep things neatly organized. like rpms in packages folder, tars in tars folder, shell files in shell folder. In that way, your code becomes more organized and understandable.
17. If you have any questions, as in the bangpypers mailing list (if you think that question would be helpful to a few more people than you alone) or email me @ram.seshan.cs@gmail.com / ramaseshanmukund@gmail.com (if you think its just your personal issue and not generally interesting to a few more people).

Anyways, dont miss the fun with a pinch of salt.

Always remember, Tequila is much better with a pinch of salt and a slice of lemon :-D

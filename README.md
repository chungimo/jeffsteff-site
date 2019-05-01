# JeffSteff Website

Joke site for trolling a friend.

Mobile site html uses javascript to force audio to play due to restrictions on current mobile devices and browsers. The video has no audio track so the ``muted`` tag bypasses the check and allows video to autoplay.

Installation:
* Media files should be sourced properly in HTML, by default they're looking at current working directory.
* Copy ``jeffsteff`` and ``jeffsteff-mobile`` to ``/var/www/``
* htaccess should be renamed to .htaccess and moved into jeffsteff.
* httpd.conf moved to ``/etc/httpd/conf/`` (CentOS/RHEL)
* haproxy.conf moved to ``/etc/haproxy``

HAProxy config listening on port 80 and using ACLs to look for the domain inputted.  

Apache using virtualhosts to serve both the desktop and mobile sites listening locally on port ``8081`` and ``8082``. Use ``semanage port -m -t http_port_t -p tcp [port]`` to allow apache to bind.

HTaccess file used to detect the user agent in order to redirect.

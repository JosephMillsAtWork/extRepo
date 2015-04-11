#!/bin/bash
#set -x 
#set -e
##Main meta into
#AUTHOR: Joseph Mills <josephjamesmills@gmail.com>
#DECRIPTION: This ext is used to manage ext from the web,.
#VERSION: 0.1
#OS: linux Only
#
## Sub Section Meta info 
#DEPENDS:  LINUX sed whiptail curl bash
#Copyright: LGPLv3+
#SCREENSHOT: http://foo.bar.com/screenShot.png
#HOMEURL:  http://foo.bar.com
#
#LONGDESCRIPTION: This is a repo watcher for mangos ext system.  It is used to download ext's that have been made by the community or IAS.

. /opt/mango/bin/ext-available/extRepo/funcions.sh
case $1 in
    init|start)
        mainMenu;
    ;;
    stop)
        killall extRepo.sh
        ;;
esac

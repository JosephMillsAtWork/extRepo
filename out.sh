#!/bin/bash
#set -x 
#set -e
##Main meta into
#AUTHOR: Terry Packer (terry@infiniteautomation.com)
#DECRIPTION: Logs start up message from sysout and syserr to ma.out and ma.err respectively
#VERSION: 0.1
#OS: linux mac 
#
## Sub Section Meta info 
#DEPENDS: nothing
#Copyright: mango automation
#SCREENSHOT: NA
#HOMEURL: http://infiniteautomation.com
#
#LONGDESCRIPTION:Logs start up message from sysout and syserr to ma.out and ma.err respectively 

## no functions are needed for this ext
# ./out/functions.sh

case "$1" in
    init)
        SYSOUT=${MA_HOME}/logs/ma.out
        SYSERR=${MA_HOME}/logs/ma.err
        ;;
esac

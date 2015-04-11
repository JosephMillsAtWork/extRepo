#!/bin/bash
#
#DECRIPTION: Starts Java Jvm with all the memory focused on Mango.Default value is 2G PLEASE CHANGE Do not use if you are using JVM for other Apps
#

case "$1" in
    init)
        ## reset any Javaopts that there might be
        JAVAOPTS=""
        
        ## could also add things like 
        ## –XX:MaxPermSize=256m
        ## Or some math 
        ## (Java process memory) = 2048m (-Xmx) + 256m (–XX:MaxPermSize)
        ## + 4*192k (NumberOfConcurrentThreads*-Xss) + “other mem” ect ect
        ## For now it is just setting the init mem the same as the max heap.
        JAVAOPTS=" -Xmx2048m -Xms2048m "
        ;;
esac

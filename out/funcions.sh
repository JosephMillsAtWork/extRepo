#!/bin/bash
#
#
#
# This file is used for making logic and functions for your script

## check for deps 

gitUrl=""

checkDeps(){
    sudo apt-get -y --force-yes install sed whiptail curl bash
}

mainMenu(){
checkDeps;

if [[ -d $MA_HOME/bin/ext-available/extRepo/cache ]];
then 
    echo "looks like there is a cache file allready"
    if [[ ! -f $MA_HOME/bin/ext-available/extRepo/cache/packageList ]];
    then 
        touch $MA_HOME/bin/ext-available/extRepo/cache/packageList
    fi
    if [[ ! -f $MA_HOME/bin/ext-available/extRepo/cache/enabledList ]];
    then 
        touch $MA_HOME/bin/ext-available/extRepo/cache/enabledList
    fi
else
    echo "Creating the cache dir for the first time"
    mkdir -p $MA_HOME/bin/ext-available/extRepo/cache
    touch $MA_HOME/bin/ext-available/extRepo/cache/packageList
    touch $MA_HOME/bin/ext-available/extRepo/cache/enabledList
fi


for i in $MA_HOME/bin/ext-enabled/*sh
do 
    [ -e $i ] || continue
    echo $i >> $MA_HOME/bin/ext-available/extRepo/cache/enabledList
done




}




## ect 

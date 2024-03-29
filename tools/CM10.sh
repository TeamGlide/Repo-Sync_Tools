#!/bin/bash

echo "##############################################"
echo "#                                            #"
echo "#               Building CM10                #"
echo "#     Follw us on twitter @CollectiveDevs    #"
echo "#                                            #"
echo "##############################################"

# Starting Timer
START=$(date +%s)
DEVICE="$1"
ADDITIONAL="$2"
THREADS=`cat /proc/cpuinfo | grep processor | wc -l`

echo "Making directory"
mkdir CM10-2
cd CM10-2

echo "Initializing Repo"
repo init -u git://github.com/CyanogenMod/android.git -b jellybean

echo "Repo Syncing"
repo sync

END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC

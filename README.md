# Lineage buildscripts
========================

Please note, I use ~/android/lineage-19.1 in this README but you can use whatever folder name you want.

First I recommend checking the official LineageOS wiki instructions for building for dubai here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    mkdir -p ~/android/lineage-19.1
    cd ~/android/lineage-19.1
    repo init -u git://github.com/LineageOS/android.git -b lineage-19.1
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/motorola.xml > .repo/local_manifests/motorola.xml
    repo sync

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/motorola.xml > .repo/local_manifests/motorola.xml
    repo sync

Building
----------
    cd ~/android/lineage-19.1
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/berlin_clean_build.sh > berlin_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/berlin_dirty_build.sh > berlin_dirty_build.sh
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/dubai_clean_build.sh > dubai_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/lineage-19.1/dubai_dirty_build.sh > dubai_dirty_build.sh
    ./berlin_clean_build.sh // for berlin clean builds
    ./berlin_dirty_build.sh // for berlin dirty builds
    ./dubai_clean_build.sh // for dubai clean builds
    ./dubai_dirty_build.sh // for dubai dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.

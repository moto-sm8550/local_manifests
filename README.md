# Lineage buildscripts
========================

Please note, I use ~/android/lineage-20 in this README but you can use whatever folder name you want.

First I recommend checking the official LineageOS wiki instructions for building for dubai here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    mkdir -p ~/android/lineage-20
    cd ~/android/lineage-20
    repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/hals-sm8550.xml > .repo/local_manifests/hals-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/picks.sh > .repo/local_manifests/picks.sh
    repo sync

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/hals-sm8550.xml > .repo/local_manifests/hals-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/picks.sh > .repo/local_manifests/picks.sh
    repo sync

Repopick
----------
    cd ~/android/lineage-20
    chmod +x picks.sh
    ./picks.sh

Building
----------
    cd ~/android/lineage-20
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_clean_build.sh > rtwo_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_dirty_build.sh > rtwo_dirty_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_eng_clean_build.sh > rtwo_eng_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_eng_dirty_build.sh > rtwo_eng_dirty_build.sh
    ./rtwo_clean_build.sh // for rtwo clean builds
    ./rtwo_dirty_build.sh // for rtwo dirty builds
    ./rtwo_eng_clean_build.sh // for rtwo_eng engineering clean builds
    ./rtwo_eng_dirty_build.sh // for rtwo_eng engineering dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.

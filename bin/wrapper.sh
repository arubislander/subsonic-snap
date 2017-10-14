#!/bin/bash

###################################################################################
# Shell script for launching Subsonic in a snap.
#
# Author: ArubIslander
###################################################################################

# Note: set some environment variables relative to the snap.

export SUBSONIC_HOME=$SNAP_USER_COMMON/var/subsonic
export SUBSONIC_DEFAULT_MUSIC_FOLDER=$SNAP_USER_COMMON/var/music
export SUBSONIC_DEFAULT_PODCAST_FOLDER=$SNAP_USER_COMMON/var/music/Podcast
export SUBSONIC_DEFAULT_PLAYLIST_FOLDER=$SNAP_USER_COMMON/var/playlists
export PATH=$SNAP/usr/lib/jvm/java-8-openjdk-$SNAP_ARCH/bin:$PATH

$SNAP/subsonic.sh

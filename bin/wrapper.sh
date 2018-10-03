#!/bin/bash

###################################################################################
# Shell script for launching Subsonic in a snap.
#
# Author: ArubIslander
###################################################################################

# Note: set some environment variables relative to the snap.

export LC_ALL=C.UTF-8 

export SUBSONIC_HOME=$SNAP_USER_COMMON/var/subsonic
export SUBSONIC_DEFAULT_MUSIC_FOLDER=$SNAP_USER_COMMON/var/music
export SUBSONIC_DEFAULT_PODCAST_FOLDER=$SNAP_USER_COMMON/var/music/Podcast
export SUBSONIC_DEFAULT_PLAYLIST_FOLDER=$SNAP_USER_COMMON/var/playlists

export SUBSONIC_HOST="$(snapctl get host)"    # ${SUBSONIC_HOST:-0.0.0.0}
export SUBSONIC_PORT="$(snapctl get port)"    # ${SUBSONIC_PORT:-4040}
export SUBSONIC_HTTPS_PORT="$(snapctl get https-port)"    # ${SUBSONIC_HTTPS_PORT:-0}
export SUBSONIC_CONTEXT_PATH="$(snapctl get context-path)"    # ${SUBSONIC_CONTEXT_PATH:-/}
export SUBSONIC_MAX_MEMORY="$(snapctl get max-memory)"    # ${SUBSONIC_MAX_MEMORY:-150}

export PATH=$SNAP/usr/lib/jvm/java-8-openjdk-$SNAP_ARCH/bin:$PATH

$SNAP/subsonic.sh

#tail -f $SUBSONIC_HOME/subsonic.log

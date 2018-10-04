<h1 align="center">
  <img src="http://www.subsonic.org/pages/inc/img/subsonic_logo.png" style="width:256px" alt="Subsonic">
  <br />
  Subsonic
</h1>

<p align="center"><b>This is the snap for Subsonic</b>, <i>“Your complete, personal media streamer”</i>. It works on Ubuntu, Fedora, Debian, and other major Linux
distributions.</p>

<p align="center">
<a href="https://build.snapcraft.io/user/arubislander/subsonic-snap"><img src="https://build.snapcraft.io/badge/arubislander/subsonic-snap.svg" alt="Snap Status"></a>
</p>


<p align="center">Published for <img src="https://raw.githubusercontent.com/anythingcodes/slack-emoji-for-techies/gh-pages/emoji/tux.png" align="top" width="24" /> with 💝 by ArubIslander</p>


## Build from repo

    $ git clone https://github.com/arubislander/subsonic-snap.git
    $ snapcraft snap
    $ sudo snap install subsonic-arubislander_<snap version>_<snap arch>.snap --dangerous

## Install from store

    sudo snap install subsonic-arubislander

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

## Summary

### Subsonic is a media streaming and sharing platform created by Sindre Mehus. (see https://www.subsonic.org)

This snap runs under full confinement, which means it will not be able to access files outside of it's 'home' folder. Normally this would make the app pretty useless, right? So to get around this issue somewhat the snap also consumes the removable-media interface. But it is not hooked up by default. So after installing the snap do:

    $ sudo snap connect subsonic-arubislander:removable-media

After that, anything mounted under /media will be accessible from the snap.

## New in version 6.1.3+snap14
Introduction of configuration settings:

- **host**: IP address for the servie to listen on. Defaults to *0.0.0.0* to listen on all IP addresses.
- **port**: What port the service should listen on. Defaults to *4040*
- **https-port**: What port to use for https. Defaults to *0*, for no https
- **context-path**: The context path to use for the url of the service. Defaults to "/"
- **max-memory**: Max amount of memory in MB that the java virtual machine is allowd to use. Defaults to *150*  

### Example:

To set the subsonic service to use a maximum of 450 MB and listen on URL: http://192.168.5.10:8080/subsonic do:

    $ snap set subsonic-arubislander host=192.168.1.10 port=8080 context-path="/subsonic" max-memory=450

The service needs to be restarted to pick up the new settings:

    $ snap restart subsonic-arubislander


Happy listening!

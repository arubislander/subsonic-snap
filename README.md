# subsonic-snap [![Snap Status](https://build.snapcraft.io/badge/arubislander/snap-znc.svg)](https://build.snapcraft.io/user/arubislander/snap-znc)
A Snap for the Subsonic server

To grab:
```
$ git clone https://github.com/arubislander/subsonic-snap.git
```
To build:
```
$ snapcraft snap
```
To install:
```
$ sudo snap install subsonic-arubislander_<snap version>.snap --dangerous
```

This snap runs under full confinement, which means it will not be able to access files outside of it's 'home' folder. Normally this would make the app pretty useless, right? So to get around this issue somewhat the snap also consumes the removable-media interface. But it is not hooked up by default. So after installing the snap do:
```
$ sudo snap connect subsonic-arubislander:removable-media
```
After that, anything mounted under /media will be accecible from the snap.

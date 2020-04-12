# Roku Jellyfin Update

A container to update jellyfin build on roku to latest master.

```bash
docker pull jasonraimondi/roku-jellyfin-updater
docker run -e ROKU_DEV_TARGET=10.0.16.3 -e ROKU_DEV_PASSWORD= jasonraimondi/roku-jellyfin-updater
```

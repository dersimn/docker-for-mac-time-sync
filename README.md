#I'm still testing this!

## Usage

Start daemon with

	docker run -d --privileged --pid=host --restart=always --name=docker-time-sync dersimn/docker-for-mac-time-sync

## Credits

Inspired by the projects:

- [mac-docker-time-sync](https://github.com/bunnyyiu/mac-docker-time-sync): Uses the same function, but uses a conjob on the macOS host system
- [docker-time-sync-agent](https://github.com/arunvelsriram/docker-time-sync-agent): Objective-C based daemon running on macOS host system, syncs time just after wake up from sleep
- [docker-nsenter](https://github.com/walkerlee/docker-nsenter): Script to access Docker for Mac's console from within a (privileged) Docker container
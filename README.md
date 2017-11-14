# compact-hass

This is the dockerfile to generate lightweight docker image of homeassistant (hass) based on Alpine Linux.
The size of the resultant docker image is less than 150 Mb but fully working for generic home automation environment.

This image is tested on synology NAS (DS 1517+) and ubuntu (x64), respectively.

* WEMO, Philips Hue, nmap, pushbullet, and plex were tested. 
* nodejs was added for the intergations of not-officially supported devices.
* nmap was installed.

** You should run docker image with --net=host option for accessing your local network resources and devices as follows:

Huray!

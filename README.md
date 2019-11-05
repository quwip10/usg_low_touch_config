# USG Low Touch Setup
A script that when pushed to a USG device will cause it to repeatedly phone home until adopted.

1) Edit line 1 of set-inform.sh and replace "YOURIPHERE" with your controller IP:

    mca-cli-op set-inform http://YOURIPHERE:8080/inform
2) scp both the mv.sh and the set-inform.sh to /config/scripts/post-config.d/

    scp ./mv.sh set-inform.sh ubnt@192.168.1.1:/config/scripts/post-config.d/
3) Reboot the device and the scripts will run automatically. If done properly, the device will show up in your controller
4) Adopt the device in the controller


# Unifi Switch Low Touch Setup
A script that will do the same as the USG script, but for a Unifi Switch

1) Edit line 1 of set-inform.sh and replace "YOURIPHERE" with your controller IP:

    mca-cli-op set-inform http://YOURIPHERE:8080/inform
2) scp the set-inform-switch.sh to /etc/persistent/rc.poststart

    scp ./set-inform-switch.sh ubnt@192.168.1.20:/etc/persistent/rc.postart
3) Reboot the device and the scripts will run automatically. If done properly, the device will show up in your controller
4) Adopt the device in the controller

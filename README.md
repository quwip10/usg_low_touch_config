# USG Low Touch Setup
A script that when pushed to a USG device will cause it to repeatedly phone home until adopted.

1) Edit line 13 of set-inform.sh and replace "YOURIPHERE" with your controller IP:

    mca-cli-op set-inform http://YOURIPHERE:8080/inform
2) scp both the mv.sh and the set-inform.sh to /config/scripts/post-config.d/

    scp ./mv.sh set-inform.sh ubnt@192.168.1.1:/config/scripts/post-config.d/
3) The device is now staged and can be shipped to a remote site, or rebooted to start adoption immediately
4) Upon a reboot the scripts will run automatically. If done properly (and with a network connection),
the device will show up in your controller
5) Adopt the device in the controller


# Unifi Switch Low Touch Setup
A script that will do the same as the USG script, but for a Unifi Switch

1) Edit line 13 of set-inform.sh and replace "YOURIPHERE" with your controller IP:

    mca-cli-op set-inform http://YOURIPHERE:8080/inform
2) scp the set-inform-switch.sh to /etc/persistent/rc.poststart

    scp ./set-inform-switch.sh ubnt@192.168.1.20:/etc/persistent/rc.postart
3) The device is now staged and can be shipped to a remote site, or rebooted to start adoption immediately
4) Upon a reboot the scripts will run automatically. If done properly (and with a network connection),
the device will show up in your controller
5) Adopt the device in the controller

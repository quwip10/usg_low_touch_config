# USG_low_touch_setup
A script that when pushed to a USG device will cause it to repeatedly phone home until adopted.

1) Edit line 14 of set-inform.sh and replace "YOURIPHERE" with your controller IP:
    mca-cli-op set-inform http://YOURIPHERE:8080/inform
2) ssh into the device and scp both the mv.sh and the set-inform.sh to /config/scripts/post-config.d
3) Reboot the device and the scripts will run automatically. If done properly, the device will show up in your controller
4) Adopt the device in the controller

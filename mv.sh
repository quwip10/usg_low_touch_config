#!/bin/bash
echo "Moving script!!!"
sudo mv /config/scripts/post-config.d/set-inform.sh /config/scripts/set-inform.sh

echo "Executing script in background!!"
/config/scripts/set-inform.sh > /dev/null 2>&1 &

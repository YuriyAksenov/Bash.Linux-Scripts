#!/bin/bash
nice -n 7 ./infinite1.bash &
nice -n 0 ./infinite2.bash &
exit 0

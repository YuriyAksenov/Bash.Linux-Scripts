#!/bin/bash
at -f ./script1.bash now + 2 minute
(tail -n 0 -f ~/report)

exit 0

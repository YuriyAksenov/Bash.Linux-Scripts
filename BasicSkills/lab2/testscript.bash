#!/bin/bash
grep -E "*" $1 | tac
exit

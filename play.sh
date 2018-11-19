#!/bin/sh
FILE=`date +%Y%m%d_%H%M`
ttyrec -e src/nethack $FILE.rec 

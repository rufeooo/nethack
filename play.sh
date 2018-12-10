#!/bin/sh
FILE=`date +%Y%m%d_%H%M_%s`
SAVE_COUNT=`ls ~/nh/install/games/lib/nethackdir/save/ | wc -l`

if [ $SAVE_COUNT -ne "0" ]
then
	echo "continue.."
	SUFFIX=.rec
else
	echo "new.."
	SUFFIX=_new.rec
fi
ttyrec -e src/nethack $FILE$SUFFIX

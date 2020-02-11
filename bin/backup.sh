#!/bin/bash
BACKUP="/run/media/daniel/BACKUP/"

if [ -d $BACKUP ]; then
    rsync -ravz --partial /home/daniel/Documents $BACKUP
    rsync -ravz --partial /home/daniel/Projects $BACKUP 
    rsync -ravz --partial /home/daniel/Downloads $BACKUP 
    rsync -ravz --partial /home/daniel/Pictures $BACKUP 
    rsync -ravz --partial /home/daniel/scripts $BACKUP
    echo 'Completed backup'
else
    echo 'Not connected to external HDD'
fi

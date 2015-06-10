#!/bin/sh
echo "Start Exporting evernote notes"
osascript "/Users/pengyu/Dropbox/Apps/WorkAutomation/Evernote/Export-All-Evernote-notes.scpt"
echo "Export done! The file has been saved to Dropbox"
echo "Start compressing file"
cd /Users/pengyu/Dropbox/Apps/Evernote
tar -zcvf "Evernote backup on $(date '+%Y-%m-%d').tar.gz" Evernote-notes.enex
echo "Finish compression"
echo "Removing the original file"
rm Evernote-notes.enex
echo "Work complete"
#!/bin/sh
echo "Start Exporting evernote notes"
osascript "/Users/rpeng/Dropbox/Apps/WorkAutomation/Evernote/Export-All-Evernote-notes.applescript"
echo "Export done! The file has been saved to Dropbox"

echo "Start compressing file"
cd /Users/rpeng/Dropbox/Apps/Evernote
tar -zcvf "Backup_$(date '+%Y-%m-%d').tar.gz" Evernote-notes.enex 
split -b 1024m "Backup_$(date '+%Y-%m-%d').tar.gz" "Backup_$(date '+%Y-%m-%d').tar.gz.part-"

# uncompress
# cat myfile_split.gz_* | gunzip -c > my_large_file
echo "Finish compression"

echo "Removing the original file"
rm Evernote-notes.enex
rm "Backup_$(date '+%Y-%m-%d').tar.gz"

echo "Work complete"
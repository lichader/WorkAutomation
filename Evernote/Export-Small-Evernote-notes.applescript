set f to "/Users/pengyu/Dropbox/Apps/Evernote/Evernote-notes.enex"
-- set archiveName to "Evernote backup on " & (do shell script "date +%m-%d-%Y" & ".tar.gz ")

with timeout of (60 * 60) seconds
	tell application "Evernote"
		-- Set date to 1990 so it finds all notes
		set matches to find notes "created:20150609"
		-- export to file set above
		export matches to f
	end tell
end timeout

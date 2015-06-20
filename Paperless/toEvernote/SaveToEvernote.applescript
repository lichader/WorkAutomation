on run argv
	set currentDate to date string of (current date)
	set theFile to item 1 of argv
	set notebookName to item 2 of argv
	set noteName to item 3 of argv
	set tagNames to split(item 4 of argv, ",")

	tell application "Evernote"
		activate
		set the theNote to create note title noteName & currentDate from file theFile notebook notebookName
		repeat with tagName in tagNames
			tagName
			if (not (tag named tagName exists)) then
				make tag with properties {name:tagName}
			end if
			assign tag tagName to theNote
		end repeat
	end tell
end run

to split(someText, delimiter)
   set AppleScript's text item delimiters to delimiter
   set someText to someText's text items
   set AppleScript's text item delimiters to {""} --> restore delimiters to default value
   return someText
end split
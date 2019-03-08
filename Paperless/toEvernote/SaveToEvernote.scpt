#!/usr/bin/env osascript -l JavaScript
function run(argv) {
  console.log(JSON.stringify(argv))
  var filePath = argv[0]
  var attachment = Path(filePath)
  var notebook = argv[1]
  var notename = argv[2] + " " + currentDate()
  var tags = argv[3].split(",")

  var evernoteApp = Application('Evernote')

  var newNote = evernoteApp.createNote({
      fromFile: attachment,
      title: notename,
      notebook: "02.Archive",
      tags: tags 
    }
  )
}

function currentDate(){
  var now = new Date()
  return now.toLocaleDateString()
}
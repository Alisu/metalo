initialization
initializeWidgets
classes:= self newList.
classes displayBlock: [ :m | m printString].
label := self newLabel.
label label: 'Classes'.
self focusOrder add: classes.
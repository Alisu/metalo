initialization
initializeWidgets
imports  := self instantiate: ImportList.
fromModules  := self instantiate: ImportList.
importClasses  := self instantiate: ImportList.
fromModules  label: 'From'.
importClasses  label: 'Class'.
self focusOrder add: imports; add: fromModules ; add: importClasses .
initialization
initializeWidgets
imports  := self instantiate: WidgetImportList.
fromModules  := self instantiate: WidgetImportList.
importClasses  := self instantiate: WidgetImportList.
fromModules  label: 'From'.
importClasses  label: 'Class'.
self focusOrder add: imports; add: fromModules ; add: importClasses .
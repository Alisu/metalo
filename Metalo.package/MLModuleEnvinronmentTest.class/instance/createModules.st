as yet unclassified
createModules

moduleToTest  := MLModule newNamed: #TestModule.
MLModuleRegistry global at:  moduleToTest name put: moduleToTest.


moduleImportFrom:=(MLModule newNamed: #importModule) environment: Smalltalk globals.
MLModuleRegistry global at:  moduleImportFrom name put: moduleImportFrom.


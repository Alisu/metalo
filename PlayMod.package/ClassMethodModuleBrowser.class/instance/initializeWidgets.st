accessing
initializeWidgets
	classModel := self instantiate:  ListPresenter.
	instanceMethodModel := self instantiate: ListPresenter.
	classMethodModel := self instantiate: ListPresenter.
	self focusOrder
		add: classModel;
		add: instanceMethodModel;
		add: classMethodModel.
	instanceMethodModel displayBlock: [ :method | method selector ].
	classMethodModel displayBlock: [ :method | method selector ]
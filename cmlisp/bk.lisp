	(block head
		(format t "here we go")
		(return-from head 'idea)
		(format t "we will never see this")
	)

(defun bar
	(x &optional y)
		(if y x 0)
	)

(defun baaz 
	(&optional (x 3) (z 10))
		(+ x z)
)

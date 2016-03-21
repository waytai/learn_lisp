(defun list+ (lst n)
	(mapcar #'(lambda (x) (+ x n))
		lst))
(print (list+ '(1 2 3) 10))

(defun print-list (list)
	(dolist (i list)
	(format t "item: ~a~%" i)))

(print (list 1 2 3 4))
(print-list (list 1 2 3 4))

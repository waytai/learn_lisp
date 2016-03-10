(defun foo (x)
  (wh (> x 10) (print 'big)))

(defmacro wh (condition &rest body)
  `(if ,condition (progn ,@body)))

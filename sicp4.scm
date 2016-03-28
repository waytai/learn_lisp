(define (self-evaluating? exp)
  (cond ((number? exp) true)
        ((string? exp) true)
        (else false)))


(define (quoted? exp)
  (tagged-list? exp 'quote))

(define (tagged-list? exp tag)
  (if (pair? exp)
      (eq? (car exp) tag)
      false))

(define (definition? exp)
  (tagged-list? exp 'define))

;;(display (eval '(* 5 5) user-initial-environment))

;;(display 
;;    (self-evaluating? '(* 5 5))
;;  )

(define (variable? exp) (symbol? exp))

(display 
    (variable? 'a)
)

(newline)

(display 
    (self-evaluating? 5)
)


(newline)

(display 
    (quoted? '(quote 10))
)

(newline)

(display 
    (definition? '(define 10))
)


(define (text-of-quotation exp) (cadr exp))

(display 
    (text-of-quotation '(quote 10))
)


(define (lookup-variable-value var env)
  (define (env-loop env)
    (define (scan vars vals)
      (cond ((null? vars)
             (env-loop (enclosing-environment env)))
            ((eq? var (car vars))
             (car vals))
            (else (scan (cdr vars) (cdr vals)))))
    (if (eq? env the-empty-environment)
        (error "Unbound variable" var)
        (let ((frame (first-frame env)))
          (scan (frame-variables frame)
                (frame-values frame)))))
  (env-loop env))


(define (enclosing-environment env) (cdr env))

(define the-empty-environment '())

(define (first-frame env) (car env))

(define (frame-values frame) (cdr frame))

(define (frame-variables frame) (car frame))

(newline)

(define a 234)

(display a)


(define a 234)


(define (make-frame variables values)
  (cons variables values))

(define vars '(a b c d))
(define vars_s '(a b c d))
(define vals (list 1 2 3 4))

(newline)

(display
  (equal? vars vars_s)
  )

(newline)

(display
  (make-frame vars vals)
  )

(define a (make-frame vars vals))
(define env (cons a '()))

(newline)
(display
  (lookup-variable-value 'a env)
  )






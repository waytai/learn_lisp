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

(display 
    (self-evaluating? 5)
)

(display 
    (quoted? '(quote 10))
)


(display 
    (definition? '(define 10))
)


(define (text-of-quotation exp) (cadr exp))

(display 
    (text-of-quotation '(quote 10))
)

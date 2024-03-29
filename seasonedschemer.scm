(define atom?
  (lambda (x)
    (and (not (pair? x)) (nit ((null? x))))))

;;chapter 11

(define member?
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     (else (or (eq? a (car lat))
	       (member? a (cdr lat)))))))

(define is-first?
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     (else (eq? (car lat) a))))) 

(define two-in-a-row?
  (lambda (lat)
    (cond 
     ((null? lat) #f)
     (else
      (or (is-first? (car lat) (cdr lat))
	  (two-in-a-row? (cdr lat)))))))

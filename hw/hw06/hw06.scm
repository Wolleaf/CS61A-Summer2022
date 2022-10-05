(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
    (car (cdr s)))

(define (caddr s) 
    (car (cddr s)))

(define (interleave lst1 lst2) 
    (cond ((and (eqv? lst1 nil) (eqv? lst2 nil)) nil)
        ((eqv? lst1 nil) lst2)
        ((eqv? lst2 nil) lst1)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))
        ))

(define (my-filter pred lst) 
    (if (eqv? lst nil)
        nil
        (if (pred (car lst))
        (cons (car lst) (my-filter pred (cdr lst)))
        (my-filter pred (cdr lst)))
    ))

(define (concatenate s) 
    (if (eqv? s nil)
        nil
        (append (car s) (concatenate (cdr s)))
        ))

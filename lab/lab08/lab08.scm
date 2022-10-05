(define (over-or-under num1 num2) 
    (cond ((> num1 num2) 1)
        ((< num1 num2) -1)
        (else 0)))
    ; (if (> num1 num2)
    ;     1
    ;     (if (= num1 num2)
    ;         0
    ;         -1)))

(define (composed f g) 
    (define new_pre (lambda (n) (f (g n))))
    new_pre)

(define (square n) (* n n))

(define (pow base exp) 
    (if (= exp 1)
        base
        (if (even? exp)
        (pow (* base base) (/ exp 2))
        (* base (pow base (- exp 1))))))

(define (ascending? lst) 
    (if (eqv? (cdr lst) nil)
        #t
        (if (<= (car lst) (car (cdr lst)))
        (ascending? (cdr lst))
        #f)))
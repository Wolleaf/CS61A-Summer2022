(define (tail-replicate x n)
  ; BEGIN
  (define helper 
    (lambda (s n) 
      (if (eqv? n 0)
        s
        (helper (cons x s) (- n 1)))))
  (helper nil n)
  ; END
)
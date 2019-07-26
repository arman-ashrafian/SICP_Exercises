; design iterative exponentiation procedure that runs in O(log(n))

(define (square x) (* x x))

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b n a)
  (cond ((= n 0) 
          a)
        ((even? n)
          (expt-iter (square b) (/ n 2) a))
        ((odd? n)
          (expt-iter b (- n 1) (* b a)))))

(display (expt 2 4))
(newline)

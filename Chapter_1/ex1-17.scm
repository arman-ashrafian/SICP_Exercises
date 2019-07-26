; ex1-17

; design a O(log(n)) multiplication procedure

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mult a b)
  (cond ((= b 1)
          a)
        ((even? b) 
          (fast-mult (double a) (halve b)))
        ((odd? b)
          (+ a (fast-mult a (- b 1))))))



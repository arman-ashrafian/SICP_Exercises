; ex1-18

; design procedure to generate iterative process for multiplying 
; two integers in O(log(n))

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mult a b)
  (fast-mult-iter a b 0))

(define (fast-mult-iter a b acc)
  (cond ((= b 0) acc)
        ((even? b) (fast-mult-iter (double a) (halve b) acc))
        (else (fast-mult-iter a (- b 1) (+ acc a)))))



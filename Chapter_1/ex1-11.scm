; ex 1-11

; f(n) = n                          if n < 3
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3

; recursive
(define (f n)
  (cond ((< n 3) n)
  (else (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3)))))))

; iterative 
(define (f2 n)
  (f2-iter n 0 1 2))

(define (f2-iter n a b c) 
  (cond ((< n 0) n)
        ((= n 0) a)
        (else 
          (f2-iter (- n 1) b c
                   (+ c (* 2 b) (* 3 a))))))

; +++++++++ testing +++++++++

(display "(f 2) = ")
(display (f 2))
(newline)

(display "(f2 2) = ")
(display (f2 2))
(newline)

(display "(f 5) = ")
(display (f 5))
(newline)

(display "(f2 5) = ")
(display (f2 5))
(newline)

(display "(f 7) = ")
(display (f 7))
(newline)

(display "(f2 7) = ")
(display (f2 7))
(newline)


(newline) 

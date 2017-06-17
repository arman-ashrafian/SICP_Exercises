; Ex. 1.3
; Define a procedure that takes 3 numbers and return the sum
; of the two larger numbers

(define (sumBigger x y z)
  (cond ((and (> x z) (> y z)) (+ (* x x) (* y y)))
        ((and (> x y) (> z y)) (+ (* x x) (* z z)))
        ((and (> y x) (> z x)) (+ (* y y) (* z z)))
        (else (+ (* x x) (* y y))) ; x = y =z
        ))

; Testing
(sumBigger 1 2 3)   ; 13
(sumBigger 5 6 7)   ; 85
(sumBigger 8 9 2)   ; 145
(sumBigger 1 2 2)   ; 8
(sumBigger 5 5 5)   ; 50

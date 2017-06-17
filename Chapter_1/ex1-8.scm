; 6/17/2017
; Newtons method to approximate the cube root of a number

; if y is an approximation of the cube root of x then a better
; approximation is given by:
;       x/y^2 + 2y
;       ----------
;           3

(define (root3 x)
  (define (good-enough? guess)
    (< (abs (- (* guess guess guess) x)) .001))
  (define (improve guess)
    (/ (+ (/ x (* guess guess))  (* 2 guess)) 3))
  (define (root3-iter guess)
    (if (good-enough? guess)
      guess
      (root3-iter (improve guess))))
  (if (not(= x 0))
    (root3-iter 1.0)
    0)) ; return 0 if x = 0

; Testing
(root3 8)
(root3 27)
(root3 (* 50 50 50))
(root3 0)

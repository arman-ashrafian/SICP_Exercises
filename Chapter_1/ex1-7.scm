; 6/16/2017
; Ex. 1.7
; Design a square-root procedure that implements the good-enough? function
; to watch how a guess changes from one iteration to the next and stops when the
; change is a very small fraction of the guess.

(define (avg x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (avg guess (/ x guess)))

; Original good-enough?
(define (good-enough-original? guess x)
 (< (abs (- (square guess) x)) 0.001))


; Improved good-enough? function
(define (good-enough? guess x)
  (define newGuess (improve guess x))
  ;(< (abs (- guess newGuess)) .001))
  (< (/ (abs (- guess newGuess)) guess) .001))

; Newton's Method for approximating square roots.
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (sq-rt x)
  (sqrt-iter 1.0 x))

; Testing
(sq-rt (* 0.00005 0.00005))  ; this works now (:
(sq-rt 2)
(sq-rt 5)
(sq-rt 9)
(sq-rt (* 1500 1500))

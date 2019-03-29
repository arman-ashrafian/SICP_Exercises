# SICP Exercises

Will update this repo with solutions as I read through SICP.

## Scheme Notes 

### define function
```scheme 
(define (func arg1 arg2)
  ; body
  (+ arg1 arg2))
```

### conditionals
```scheme
(define (negate b)
  (if b #f #t))    ; (if <condition> <condition-true> <condition-false>)
```


```scheme
;; abs version 1
(define (abs x)
  (cond ((> x 0) x)       ; (cond ((p1) (e1))
        ((= x 0) 0)       ;       ((p2) (e2)))
        ((< x 0) (- x))))

;; abs version 2
(define (abs x)
  (cond ((< x 0) (- x))   ; (cond ((p1) (e1))
        (else x)))        ;       (else (e2))
```

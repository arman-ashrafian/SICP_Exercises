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

### local variables 
declare local variables using `let` (syntactic sugar for creating a lambda with parameters that executes immediately

```scheme
; f(x,y) = x(1+xy) + y(1-y) + (1+xy)(1-y)
(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x a)
       (* y b)
       (* a b))))
```

## Installation

1. Download Racket
2. Add Racket to `$PATH`
3. Add the following to your ~/.bashrc

```
alias sicp='racket -p neil/sicp -f '
alias sicpi='racket -p neil/sicp -i '
```
Now `sicp file.scm` will execute the file and `sicpi` will start the repl

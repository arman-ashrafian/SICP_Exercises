; ex 1-12
; Write a procedure that computes elements of Pascal's triangle
                
; row = 1       1 
;              1 1
;             1 2 1
; row = 4    1 3 3 1
;              ^
;              |
;              -------- col = 2

; (pascal 3 2) => 2
; (pascal 4 3) => 3

(define (pascal row col)
  (cond ((or (< col 0) (< row 0) (< row col)) 0) ; 0 if invalid args
        ((or (= col 1) (= col row)) 1)           ; 1 if col on edge
        (else
          ; add the two nums above (row, col)
          (+ (pascal (- row 1) (- col 1))        
             (pascal (- row 1) col)))))
          
        
(display (pascal 3 2))
(newline)
(display (pascal 4 3))
(newline)

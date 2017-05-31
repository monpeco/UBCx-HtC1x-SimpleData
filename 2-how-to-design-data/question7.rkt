;;Consider the following data definition:


;; Data definition:

;; Television is one of:
;; - "off"
;; - Natural[1, 99]
;; - "broken"
;; interp. a tv is either off, set to a channel between 1 and 99, or broken


; Before simplification
#;
(define (fn-for-television tv)
  (cond [(and (string? tv)(string=? tv "off"))(...)]
        [(and (number? tv)(<= 1 tv)(<= tv 99))(... tv)]
        [(and (string? tv)(string=? tv "broken"))(...)]))

; After simplification
#;
(define (fn-for-television tv)
  (cond [(and (string? tv)(string=? tv "off"))(...)]
        [(number? tv)(... tv)]
        [else (...)]))
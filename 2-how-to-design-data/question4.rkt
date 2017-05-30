;;Problem:
;;Desing a data definition for a traffic light that can either be desabled,
;; or be one of red, yellow or green.


;; Data definition:

;;  TLight is one of:
;;  - false
;;  - "red"
;;  - "yellow"
;;  - "green"
;; interp. false means the light is disabled, otherwise the color of the light

(define TL1 false)
(define TL2 "red")

(define (fn-for-tlight tl)
  (cond [(false? tl) (...)]
        [(string=? tl "red") (...)]
        [(string=? tl "yellow") (...)][]
        [(string=? tl "green") (...)]))

;; Template rules used:
;;  - One of: 4 cases
;;  - atomic distinct: false
;;  - atomic distinct: "red"
;;  - atomic distinct: "yellow"
;;  - atomic distinct: "green"
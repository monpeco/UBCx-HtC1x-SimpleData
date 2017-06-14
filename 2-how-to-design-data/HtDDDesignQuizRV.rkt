;; HtDD Design Quiz

;; Age is Natural
;; interp. the age of a person in years
(define A0 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a))

;; Template rules used:
;;  - atomic non-distinct: Natural




;; Problem 1:
;; Consider the above data definition for the age of a person.
;; Design a function called teenager? that determines whether a person
;; of a particular age is a teenager (i.e., between the ages of 13 and 19)

;; Age -> Boolean
;; return true, if the age is between 13-19

#;
(define (teenager? a) false) ;stub

#;
(define (teeager? a)  ;template
(... a))

(define (teenager? a)
(<= 13 a 19))










;; Problem 2:
;; Design a data definition called MonthAge to represent a person's age in months
;; MonthAge is Natural
;; Interp. the age of a person in months

#;
(define (fn-for-month-age a)
(... a))

;; Template used:
;;  - atomic non-distinct: Natural










;; problem 3
;; Design a function called months-old that takes a person's age in yeras and yields 
;; that person's age in months

(check-expect (months-old 0) 0)
(check-expect (months-old 1) 12)
(check-expect (months-old 2) 24)

;; Age -> MonthAge
;; convers age in yeras into age in months

#;
(defeine (months-old a) 0)  ; stub

#;
(define (months-old a)
(... a))

(define (months-old a)
(* 12 a))








;; problem 4
;; consider a video game ..

;; Health is one of:
;;  - "dead"
;;  - Natural
;; Interp. "dead" means a dead player, a number represents the extra lives of the player

(define H1 "dead")
(define H2 2)

#;
(define (fn-for-health h)
(cond [(string? h) (...)]
      [else (... h)]))

;; Template rules used: 
;;  - one of 2 cases:
;;  - atomic distinct: "dead"
;;  - atomic non-distinct: Natural
 

;; Health -> Health
;; increase the number of lives if the player is alive

(check-expect (mincrease-health 0) 1)
(check-expect (mincrease-health "dead") "dead")
(check-expect (mincrease-health 1) 2)

#;
(define ((increase-health a) 1) ;stub

;<took template from Health>
	  
(define (increase-health h)
(cond [(string? h) "dead"]
      [else (add1 h)]))


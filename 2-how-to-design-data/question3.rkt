;;Suppose we want to create a data definition to represent dinner reservations
;;at a pop up restaurant. At this restaurant people simply reserve a place for
;;themselves - they are seated with whoever is in line with them when they show up.

;;A person can either reserve a spot for one of the 100 spaces available each
;;evening, or they can be placed on the standby list which doesn't guarantee
;;them a seat.


;; Reservation is one of:
;;  - Natural[1, 100]
;;  - "standby"
;; interp.
;;    Natural[1, 100] means a guaranteed seat for dinner where the number 
;;		      corresponds to which reservation (not which seat).
;;    "standby"       means a standby spot, if all the reservations show 
;;		      up this person will not be seated.

(define (fn-for-reservation r)
  (cond [(and (number? r) (... r))]
        [else (...)]))

;; Template rules used:
;;  - One of: 2 cases
;;  - atomic non-distinct: Natural[1, 100]
;;  - atomic distinct: "standby"
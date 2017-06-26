;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname compound-data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct pos (x y))

(define P1 (make-pos 3 6))   ;contructor
(define P2 (make-pos 2 8))

(pos-x P1)   ;3              ;selector
(pos-y P1)   ;6

(pos? P1)    ;true           ;predicate
(pos? "Hi")  ;false

;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname booleans-if) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;true
;false

;(define HEIGHT 100)
;(define WIDTH 100)
;
;(> HEIGHT WIDTH)
;(>= HEIGHT WIDTH)
;
;(string=? "foo" "bar")
;(string=? "foo" "foo")

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

;(< (image-width I1)
;   (image-width I2))

;(if (< (image-width I1)
;       (image-height I1))
;     "tall"
;     "wide")

;(if (< (image-width I1)
;       (image-height I1))
;     (image-width I1)
;     (image-height I1))

(and (> (image-height I1) (image-height I2))
     (< (image-width I1) (image-width I2)))
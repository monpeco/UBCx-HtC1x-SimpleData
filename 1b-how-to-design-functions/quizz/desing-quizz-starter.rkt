;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname desing-quizz-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;; design-quizz.rkt

;;PROBLEM:
;;Design a function that consumes two images and produces true if the first is larger
;;than the second.

;;Signature, purpose and stub.
;;Define examples, wrap each in check-expect.
;;Template and inventory.
;;Code the function body.
;;Test and debug until correct

(check-expect (image-larger (rectangle 0 0 "solid" "red")                   ;(examples)
                            (rectangle 0 0 "solid" "red") ) false)

(check-expect (image-larger (rectangle 10 10 "solid" "red")
                            (rectangle 10 10 "solid" "red") ) false)

(check-expect (image-larger (rectangle 20 20 "solid" "red")
                            (rectangle 10 10 "solid" "red") ) true)

(check-expect (image-larger (rectangle 20 10 "solid" "red")
                            (rectangle 10 20 "solid" "red") ) false)

;;Image Image -> Boolean                                        (signature)
;;Returns true if the first image is larger that the second     (purpose)

;(define (image-larger img1 img2) true)  ;(stub)

;(define (image-larger img1 img2)        ;(template)
;  (... img1 img2))


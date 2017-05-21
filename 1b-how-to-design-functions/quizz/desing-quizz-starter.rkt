;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname desing-quizz-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean                                                ;(signature)
;; Returns true if the first image is larger that the second             ;(purpose)

(check-expect (image-larger? (rectangle 10 10 "solid" "red") (rectangle 20 20 "solid" "red") ) false)  ;(examples)
(check-expect (image-larger? (rectangle 20 10 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 30 10 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 10 20 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 20 20 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 30 20 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 10 30 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 20 30 "solid" "red") (rectangle 20 20 "solid" "red") ) false)
(check-expect (image-larger? (rectangle 30 30 "solid" "red") (rectangle 20 20 "solid" "red") ) true)

;(define (image-larger img1 img2) true)                                  ;(stub)

;(define (image-larger img1 img2)                                        ;(template)
;  (... img1 img2))

(define (image-larger? img1 img2)                                        ;(function body)
  (and (> (image-height img1) (image-height img2) )
       (> (image-width img1) (image-width img2) )))
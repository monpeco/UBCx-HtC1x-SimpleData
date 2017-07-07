;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname flower-growing) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; Constants
(define HEIGHT 400)
(define WIDTH 600)

(define CENTER (circle 5 "solid" "red"))
(define PETAL (ellipse 8 13 "solid" "orange"))

(define MTS (empty-scene HEIGHT WIDTH "white"))

(define PETALS-B (beside (rotate 135 PETAL)
                         (rotate 0 PETAL)
                         (rotate 45 PETAL)))
(define PETALS-U (beside (rotate 45 PETAL)
                         (rotate 0 PETAL)
                         (rotate 135 PETAL)))
(define PETALS-C (beside (rotate 90 PETAL)
                          CENTER
                         (rotate 90 PETAL)))

(define FLOWER (above PETALS-U PETALS-C PETALS-B))



;; Data definition

(define-struct fs (x y size))
;; FlowerState is (make-fs Natural[0,WIDTH] Natural[0,HEIGHT] Number)
;; interp. a flower state is the x and y position of the flower, and the size at a given moment

(define FS2 (make-fs 20 0 0.5))
(define FS1 (make-fs 6 10 1.1))

#;
(define (fn-for-fs fs)
  (... (fs-x b)     ;Natural[0,WIDTH]
       (fs-y b)     ;Natural[0,HEIGHT]
       (fs-size b)))   ;Number
;; Template rules used:
;;  - compound: 3 fields



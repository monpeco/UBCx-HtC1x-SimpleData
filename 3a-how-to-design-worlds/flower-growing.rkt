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





;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname flower-growing) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)
;; =================
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


;; =================
;; Data definition

(define-struct fs (x y size))
;; FlowerState is (make-fs Natural[0,WIDTH] Natural[0,HEIGHT] Number)
;; interp. a flower state is the x and y position of the flower, and the size at a given moment

(define FS2 (make-fs 20 0 0.5))
(define FS1 (make-fs 6 10 1.1))

#;
(define (fn-for-fs fs)
  (... (fs-x fs)        ;Natural[0,WIDTH]
       (fs-y fs)        ;Natural[0,HEIGHT]
       (fs-size fs)))   ;Number
;; Template rules used:
;;  - compound: 3 fields


;; =================
;; Functions:

;; FlowerState -> FlowerState
;; run the animation, starting with initial flower state fs.
;; Start with (main (make-fs 0 0))
;; <no tests for main functions>
(define (main fs)
  (big-bang fs                      ; FlowerState
            (on-tick   next-fs)     ; FlowerState -> FlowerState
            (to-draw   render-fs)   ; FlowerState -> Image
            (on-mouse  init-fs)))   ; FlowerState Integer Integer MouseEvent -> FlowerState

;; FlowerState -> FlowerState
;; Increase the size of the flower by 0.1 rate
(check-expect (next-fs (make-fs 0 0 5.0)) (make-fs 0 0 5.1))
(check-expect (next-fs (make-fs 20 30 19.0)) (make-fs 20 30 19.1))
(check-expect (next-fs (make-fs 30 40 49.0)) (make-fs 30 40 49.1))
;(define (next-fs fs) fs);Stub
(define (next-fs fs)
  (make-fs (fs-x fs)
           (fs-y fs)
           (+ (fs-size fs) 0.1)))

;; FlowerState -> Image
;; Produces the fs image at x and y position and a size rate scale
(check-expect (render-fs (make-fs   0   0 1.0)) (place-image FLOWER 0 0 MTS))
(check-expect (render-fs (make-fs 100 200 2.0)) (place-image (scale 2.0 FLOWER) 100 200 MTS))
(check-expect (render-fs (make-fs 300  40 5.0)) (place-image (scale 5.0 FLOWER) 300  40 MTS))
;(define (render-fs fs) (place-image FLOWER 0 0 MTS));Stub
(define (render-fs fs)
  (place-image (scale (fs-size fs) FLOWER)
               (fs-x fs)
               (fs-y fs)
               MTS))

;; FlowerState -> FlowerState
;; Initializes the flower in a x and y position, and with a 1 scale
(check-expect (init-fs (make-fs 0 0 0) 5 5 "button-down") (make-fs 0 0 1))
;(define (init-fs f x y me) f);Stub
(define (init-fs f x y me)
  (cond [(mouse=? me "button-down") (make-fs   0   0 1.0)]
        [else f]))
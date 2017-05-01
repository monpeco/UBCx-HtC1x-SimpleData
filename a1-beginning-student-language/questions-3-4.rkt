;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname questions-3-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(overlay (text "STOP" 48 "white") 
         (regular-polygon 60 8 "solid" "red"))

(beside (square 20 "outline" "blue")
        (above (circle 15 "solid" "red")
               (triangle 20 "solid" "green")))	
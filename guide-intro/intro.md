#1 Welcome to Racket

##1.1 Interacting with Racket

> 5
5

> "Hello, world!"
"Hello, world!"

> (substring "the boy out of the country" 4 7)
"boy"

##1.2 Definitions and Interactions

 (define (extract str)
   (substring str 4 7)) 

> (extract "The boy out of the country")
> (extract "the country out of the boy")
"boy"
"cou"


##1.3 Creating Executables

#lang racket
 
(define (extract str)
  (substring str 4 7))
 
(extract "the cat out of the bag")
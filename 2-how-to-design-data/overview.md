#How to Design Data

In this module we begin learning how to design data representations of problem domain information. While systems tend to have more function designs than data designs, the design of the data turns out to drive the design of the functions. So data design is a critical part of program design.

Working through the videos and practice materials for this module should take approximately 5-8 hours of dedicated time to complete.

Learning Goals

Be able to use the How to Design Data Definitions (HtDD) recipe to design data definitions for atomic data.
Be able to identify problem domain information that should be represented as simple atomic data, intervals, enumerations, itemizations and mixed data itemizations.
Be able to use the Data Driven Templates recipe to generate templates for functions operating on atomic data.
Be able to use the How to Design Functions (HtDF) recipe to design functions operating on atomic data.

Introduction
```
(define aspect-ratio img
  (cond [Q A]
		[Q A]
		[Q A]))
		
(define aspect-ratio img
  (cond [(> (image-height img) (image-width img) ) "tall"]
        [(= (image-height img) (image-width img) ) "tall"]
        [else "wide"]))
```

#Rule of evaluation
```
1
(cond [(> 1 2 ) "bigger"]
      [(= 1 2 ) "equal"]
      [(< 1 2 ) "smaller"])

2
(cond [false "bigger"]
      [(= 1 2 ) "equal"]
      [(< 1 2 ) "smaller"])

3
(cond [(= 1 2 ) "equal"]
      [(< 1 2 ) "smaller"])

3
(cond [false "equal"]
      [(< 1 2 ) "smaller"])

4
(cond [(< 1 2 ) "smaller"])

5
(cond [true "smaller"])

6
"smaller"

```
#Key words:
* Problem domain
* Data definition

#First version of the next-color method

```

;; Part of a traffic simulation

(define (next-color c)
   (cond [(= c 0) 2]
         [(= c 1) 0]
		 [(= c 2) 1]))
```


#Second version of the next-color method
```

;; Part of a traffic simulation

;; Natural -> Natural
;; Produce next color of traffic light
(check-expect (next-color 0) 2)
(check-expect (next-color 1) 0)
(check-expect (next-color 2) 1)

;(define (next-color c) 0) ;stub

;(define (next-color c)    ;template
   (... c))
   
(define (next-color c)
   (cond [(= c 0) 2]
         [(= c 1) 0]
		 [(= c 2) 1]))

Third version
;; Part of a traffic simulation

;; Natural -> Natural
;; Produce next color of traffic light
(check-expect (next-color 0) 2)
(check-expect (next-color 1) 0)
(check-expect (next-color 2) 1)

;(define (next-color c) 0) ;stub

;(define (next-color c)    ;template
   (... c))
   
(define (next-color c)
   (cond [(= c 0) 2]
         [(= c 1) 0]
		 [(= c 2) 1]))

```

##How To Design Data (HTDD)

* A possible structure definition (not until compound data)
* A type comment that defines a new type name and describes how to form data of that type.
* An interpretation that describes the correspondence between information and data.
* One or more examples of the data.
* A template for a 1 argument function operating on data of this type.


##Data Driven Templates
```
(define (fn-for-type-name x)
  <body>)
```
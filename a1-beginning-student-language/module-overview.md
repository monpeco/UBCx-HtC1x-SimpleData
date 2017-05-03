#Beginning Student Language (BSL)

This page provides an overview of the material for the first module of the course including topics, learning goals, estimate of time required and study tips. Each module of the course will start with a similar page which you can always access from the navigation bar to the left.

In this course we use a specially designed programming language called Beginning Student Language (BSL). The BSL language is small and simple, and you will be able to learn most of it in this first module. Its simplicity has two benefits. First it allows us to spend more time on learning the design method which is the real focus of the course. In addition, because BSL forms the core of nearly every other language you will ever use, learning the design method using BSL will help you adapt the material you learn in this course to other programming languages.

This course is primarily targeted at students who have never programmed before, so for many of you this will be your first programming language. The videos in this module are paced with that in mind. The videos go through not just the language but also the tools we will be using. Please avoid the temptation to skim this material.

For students who have already programmed, this module may seem too easy – but be careful! Be sure to learn this programming language. While this language forms the conceptual core of nearly every programming language you might have used, it is also different in important ways. Take the time to go through this material carefully.

Working through the videos and practice materials for this module should take approximately 5-8 hours of dedicated time to complete.


#Learning Goals

* Be able to write expressions that operate on primitive data including numbers, strings, images and booleans.
* Be able to write constant and function definitions.
* Be able to write out the step-by-step evaluation of simple expressions including function calls.
* Be able to use the stepper to automatically step through the evaluation of an expression.
* Be able to use the Dr Racket help desk to discover new primitives.


--

#Expressions, pt 1
This is a expression
(+ 3 4)
>5

And produces a result

To form a Expression:
(<primitive> <expression> ...)

A single value es considered a expression
<value>

Comments
;(+ 3 4)

Other expression
(sqr 3)

(sqrt 16)

--

#Evaluation, pt 2

(+ 2 (* 3 4) (- (+ 1 2)))

The operation is call 'call to a primitive'
to evaluate a primitive call:
- first reduce operands to values
- then apply primitive to values

The evaluation is made with this two rules:
* Left to rigth
* From inside to outside

--

#Strings and Images, pt 1

A string looks like this:
"apple"

A operation with strings:
(string-append "Ada" " " "Lovelace")

(string-length "apple")

(substring "Caribou" 2 4)



--

#Strings and Images, pt 2

```
(require 2htdp/image)

(circle 10 "solid" "red")

(rectangle 30 60 "outline" "blue")

(text "hello" 20 "orange")
```

above produces an image with all its arguments stacked up and lined up on their horizontal centers

```
(above (circle 10 "solid" "red")
		(circle 20 "solid" "yellow")
		(circle 30 "solid" "green"))
```

```
(beside (circle 10 "solid" "red")
		(circle 20 "solid" "yellow")
		(circle 30 "solid" "green"))
```

```
(overlay (circle 10 "solid" "red")
		(circle 20 "solid" "yellow")
		(circle 30 "solid" "green"))
```
		
beside makes the same but at a side and overlay put on top each image.

--

Question 3
```
(overlay (text "STOP" 48 "white") 
         (regular-polygon 60 8 "solid" "red"))
```

```		 
(beside (square 20 "outline" "blue")
        (above (circle 15 "solid" "red")
               (triangle 20 "solid" "green")))		
```

--

Constant Definitions, pt 1

```
(define WIDTH 400)
(define HEIGHT 600)

(* WIDTH HEIGHT)
```

To form a constant definition:

```
(define <name> <expression>)
```

sequence of characters including: 
`a..z`, `A..Z`, `0..9`, `! @ $ % _ + - = ? < >]`

```
;http://www.ccs.neu.edu/home/matthias/HtDP2e/part_one.html
(define CAT )
(define RCAT (rotate -10 CAT))
(define LCAT (rotate 10 CAT))

RCAT
LCAT
```

--

Function Definitions, pt. 1

```
(above (circle 40 "solid" "red")         
       (circle 40 "solid" "yellow")
       (circle 40 "solid" "green"))
```

```
(define (bulb c)
  (circle 40 "solid" c))

(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))
```

--

Function Definitions, pt. 2

To form a function definition:

```
(define (<name> <parameter> ...)
	<expression>)
```

```
(define (bulb c)
	circle 40 "solid" c)
```

To form a function call expression:

```
(<name-of-defined-function> <expresion>) ; this expression migth be an operands
```

```
(bulb (string-append "re" "d")) 
```

--

Booleans and if Expressions, pt 1

There are two values:
```
;true
;false
```
Differents booleans operations
```
(define HEIGHT 100)
(define WIDTH 100)

(> HEIGHT WIDTH)
(>= HEIGHT WIDTH)

(string=? "foo" "bar")
(string=? "foo" "foo")
```
```
(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 20 "solid" "blue"))

(< (image-width I1)
   (image-width I2))
```

Booleans and if Expressions, pt 2

To form an if expression:

```
(if <expression>	;question (must produce a boolean)
	<expression>	;true aswer
	<expression>)	;false answer
```


```
(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 20 "solid" "blue"))

(if (< (image-width I1)
       (image-height I1))
     "tall"
     "wide")
```

Booleans and if Expressions, pt 3

To evaluate an if expression:
* If the question expression is not a value, evaluate it and replace with value
* If the question is true, replace entire if expression with true answer expression
* If the question is false replace entire if expression with false answer expression
* The question is a value other than true or false, so produce an error.





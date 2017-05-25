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
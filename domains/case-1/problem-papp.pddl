;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 1 - Projection Aware Plan Generation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BRAT)

(:domain PAPP)

(:objects
A B C R T - block
)

(:init
;; hand is empty
(handempty)
;; all blocks are clear
(clear A)
(clear B)
(clear C)
(clear R)
(clear T)
;; all blocks on the table
(ontable A)
(ontable B)
(ontable C)
(ontable R)
(ontable T)
;; available words
(isword3 B A T)
(isword3 A C T)
(isword3 C A T)
(isword4 B R A T)
)

(:goal
(and
(word-formed)
)
)

)

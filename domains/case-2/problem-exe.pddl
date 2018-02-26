;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 2 - Projection Aware Plan Execution
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BRAT)

(:domain PAPE)

(:objects
A B G R O T - block
)

(:init
;; hand is empty
(handempty)
;; all blocks are clear
(clear A)
(clear B)
(clear G)
(clear O)
(clear R)
(clear T)
;; all blocks on the table
(ontable A)
(ontable B)
(ontable G)
(ontable O)
(ontable R)
(ontable T)
;; available words
(isword G O A T)
(isword B O A T)
(isword B R A T)
)

(:goal
(and
(word-formed)
)
)

)

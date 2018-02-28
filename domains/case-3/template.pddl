;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 3 - Projection Aware Human-in-the-Loop Plan Execution
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BRAT-hilp)

(:domain PAPE-hilp)

(:objects
A B C O R T  - block
Fetch - robot
Me - human
)

(:init
;; hand is empty
(handempty Fetch)
(handempty Me)
;; all blocks are clear
(clear A)
(clear B)
(clear C)
(clear O)
(clear R)
(clear T)
;; all blocks on the table
(ontable A)
(ontable B)
(ontable C)
(ontable O)
(ontable R)
(ontable T)
;; available words
(isword A R T)
(isword R A T)
(isword C O B)
)

(:goal
(and
<<HYPOTHESIS>>
)
)

)

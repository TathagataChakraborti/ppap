;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 2 - Projection Aware Plan Execution
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain PAPE)

(:requirements :strips :typing)

(:types
block
)

(:predicates
(on ?x ?y - block)
(ontable ?x - block)
(clear ?x - block)
(holding ?x - block)
(handempty)
(isword ?b1 ?b2 ?b3 ?b4 - block)
(word-formed)
)

(:action makeword
:parameters (?b1 ?b2 ?b3 ?b4 - block)
:precondition
(and
(on ?b1 ?b2)
(on ?b2 ?b3)
(on ?b3 ?b4)
(ontable ?b4)
(clear ?b1)
(isword ?b1 ?b2 ?b3 ?b4)
)
:effect
(and
(word-formed)
)
)

(:action pick-up
:parameters (?x - block)
:precondition
(and
(clear ?x)
(ontable ?x)
(handempty)
)
:effect
(and
(not (ontable ?x))
(not (clear ?x))
(not (handempty))
(holding ?x)
)
)

(:action put-down
:parameters (?x - block)
:precondition
(and
(holding ?x)
)
:effect
(and
(not (holding ?x))
(clear ?x)
(handempty)
(ontable ?x)
)
)

(:action stack
:parameters (?x ?y - block)
:precondition
(and
(holding ?x)
(clear ?y)
)
:effect
(and
(not (holding ?x))
(not (clear ?y))
(clear ?x)
(handempty)
(on ?x ?y)
)
)

(:action unstack
:parameters (?x ?y - block)
:precondition
(and
(on ?x ?y)
(clear ?x)
(handempty)
)
:effect
(and
(holding ?x)
(clear ?y)
(not (clear ?x))
(not (handempty))
(not (on ?x ?y))
)
)

)

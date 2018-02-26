;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 1 - Projection Aware Plan Generation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain PAPP)

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
(isword3 ?b1 ?b2 ?b3 - block)
(isword4 ?b1 ?b2 ?b3 ?b4 - block)
(word3-formed ?b1 ?b2 ?b3 - block)
(word4-formed ?b1 ?b2 ?b3 ?b4 - block)
(word-formed)
)

(:action make3word
:parameters (?b1 ?b2 ?b3 - block)
:precondition
(and
(on ?b1 ?b2)
(on ?b2 ?b3)
(ontable ?b3)
(clear ?b1)
(isword3 ?b1 ?b2 ?b3)
)
:effect
(and
(word3-formed ?b1 ?b2 ?b3)
(word-formed)
)
)

(:action make4word
:parameters (?b1 ?b2 ?b3 ?b4 - block)
:precondition
(and
(on ?b1 ?b2)
(on ?b2 ?b3)
(on ?b3 ?b4)
(ontable ?b4)
(clear ?b1)
(isword4 ?b1 ?b2 ?b3 ?b4)
)
:effect
(and
(word4-formed ?b1 ?b2 ?b3 ?b4)
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

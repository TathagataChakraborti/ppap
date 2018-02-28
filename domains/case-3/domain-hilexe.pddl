;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 3 - Projection Aware Human-in-the-Loop Plan Execution
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain PAPE-hilp)

(:requirements :strips :typing)

(:types
block
human robot - agent
)

(:predicates
(on ?a - agent ?x ?y - block)
(ontable ?x - block)
(clear ?x - block)
(holding ?a - agent ?x - block)
(handempty ?a - agent)
(isword ?b1 ?b2 ?b3 - block)
(word-formed ?a - agent)
)

(:action makeword
:parameters (?a - agent ?b1 ?b2 ?b3 - block)
:precondition
(and
(on ?a ?b1 ?b2)
(on ?a ?b2 ?b3)
(clear ?b1)
(isword ?b1 ?b2 ?b3)
)
:effect
(and
(word-formed ?a)
)
)

(:action pick-up
:parameters (?a - agent ?x - block)
:precondition
(and
(clear ?x)
(ontable ?x)
(handempty ?a)
)
:effect
(and
(not (ontable ?x))
(not (clear ?x))
(not (handempty ?a))
(holding ?a ?x)
)
)

(:action put-down
:parameters (?a - agent ?x - block)
:precondition
(and
(holding ?a ?x)
)
:effect
(and
(not (holding ?a ?x))
(clear ?x)
(handempty ?a)
(ontable ?x)
)
)

(:action stack
:parameters (?a - agent ?x ?y - block)
:precondition
(and
(holding ?a ?x)
(clear ?y)
)
:effect
(and
(not (holding ?a ?x))
(not (clear ?y))
(clear ?x)
(handempty ?a)
(on ?a ?x ?y)
)
)

(:action unstack
:parameters (?a - agent ?x ?y - block)
:precondition
(and
(on ?a ?x ?y)
(clear ?x)
(handempty ?a)
)
:effect
(and
(holding ?a ?x)
(clear ?y)
(not (clear ?x))
(not (handempty ?a))
(not (on ?a ?x ?y))
)
)

)

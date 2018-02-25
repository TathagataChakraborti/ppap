;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 3 - Projection for MRP
;;; USE CASE - 3 - This is the human model (domain)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (domain FETCH-human)

(:requirements :strips :typing)

(:types
location locatable
block bottle can - object
)

(:predicates
(at ?l - location)
(on ?x ?y - block)
(ontable ?x - block)
(clear ?x - block)
(reachable ?x - block)
(holding ?x - block)
(handempty)
(handtucked)
(crouched)
(blocking)
(tower2-formed ?x - block)
(tower3-formed ?x - block)
)

(:action blocking
:parameters ()
:precondition
(and
(at lab)
)
:effect
(and
(blocking)
)
)

(:action stop-blocking
:parameters ()
:precondition
(and
(blocking)
)
:effect
(and
(not (blocking))
)
)

(:action form2tower
:parameters (?b1 ?b2 - block)
:precondition
(and
(on ?b1 ?b2)
(ontable ?b2)
(clear ?b1)
)
:effect
(and
(tower2-formed ?b1)
)
)

(:action form3tower
:parameters (?b1 ?b2 ?b3 - block)
:precondition
(and
(on ?b1 ?b2)
(on ?b2 ?b3)
(ontable ?b3)
(clear ?b1)
)
:effect
(and
(tower3-formed ?b1)
)
)

(:action pick-up
:parameters (?x - block)
:precondition
(and
(blocking)
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
(blocking)
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
(blocking)
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
(blocking)
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

(:action move
:parameters (?from ?to - location)
:precondition
(and
(not (blocking))
(at ?from)
)
:effect
(and
(at ?to)
(not (at ?from))
)
)

(:action tuck
:parameters ()
:precondition
(and
(not (blocking))
)
:effect
(and
(handtucked)
)
)

(:action crouch
:parameters ()
:precondition
(and
(not (blocking))
)
:effect
(and
(crouched)
)
)

)


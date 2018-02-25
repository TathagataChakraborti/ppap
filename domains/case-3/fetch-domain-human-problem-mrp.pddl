;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; USE CASE - 3 - Projection for MRP
;;; USE CASE - 3 - This is the human model (problem)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem MRP-human)

(:domain FETCH-human)

(:objects
kitchen office lab - location
red orange green yellow blue - block
)

(:init
;; Fetch is in the lab
(at lab)
;; Fetch hand is empty; but not tucked and crouched
(handempty)
;; all blocks except yellow are clear
(clear red)
(clear orange)
(clear green)
(clear blue)
;; all blocks except red are on ONTABLE
(ontable orange)
(ontable green)
(ontable yellow)
(ontable blue)
;; red block is on yellow
(on red yellow)
)

(:goal
(and
(not (blocking))
(tower3-formed red)
)
)

)

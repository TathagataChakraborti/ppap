(define
	(problem grounded-BRAT)
	(:domain grounded-PAPP)
	(:init
		(= (total-cost) 0)
		( ONTABLE_T )
		( ONTABLE_R )
		( ONTABLE_C )
		( ONTABLE_B )
		( ONTABLE_A )
		( CLEAR_T )
		( CLEAR_R )
		( CLEAR_C )
		( CLEAR_B )
		( CLEAR_A )
		( HANDEMPTY )
	)
	(:goal
		(and 
		( WORD-FORMED )
		)
	)

)

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
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	)
	(:goal
		(and 
		( WORD-FORMED )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		)
	)
	(:metric minimize (total-cost))

)

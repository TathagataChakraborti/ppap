(define
	(domain grounded-PAPP)
	(:requirements :strips :action-costs)
	(:predicates
		( HOLDING_A )
		( HOLDING_B )
		( HOLDING_C )
		( HOLDING_R )
		( HOLDING_T )
		( ON_A_A )
		( ON_A_B )
		( ON_A_C )
		( ON_A_R )
		( ON_A_T )
		( ON_B_A )
		( ON_B_B )
		( ON_B_C )
		( ON_B_R )
		( ON_B_T )
		( ON_C_A )
		( ON_C_B )
		( ON_C_C )
		( ON_C_R )
		( ON_C_T )
		( ON_R_A )
		( ON_R_B )
		( ON_R_C )
		( ON_R_R )
		( ON_R_T )
		( ON_T_A )
		( ON_T_B )
		( ON_T_C )
		( ON_T_R )
		( ON_T_T )
		( WORD3-FORMED_C_A_T )
		( WORD-FORMED )
		( WORD3-FORMED_A_C_T )
		( WORD3-FORMED_B_A_T )
		( WORD4-FORMED_B_R_A_T )
		( CLEAR_T )
		( HANDEMPTY )
		( CLEAR_R )
		( CLEAR_C )
		( CLEAR_B )
		( CLEAR_A )
		( ONTABLE_T )
		( ONTABLE_R )
		( ONTABLE_C )
		( ONTABLE_B )
		( ONTABLE_A )
		( EXPLAINED_FULL_OBS_SEQUENCE )
		( NOT_EXPLAINED_FULL_OBS_SEQUENCE )
	) 
	(:functions (total-cost))
	(:action MAKE4WORD_B_R_A_T
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( ONTABLE_T )
			( ON_A_T )
			( ON_R_A )
			( ON_B_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD4-FORMED_B_R_A_T )
			( WORD-FORMED )
		)
	)
	(:action MAKE3WORD_B_A_T
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( ONTABLE_T )
			( ON_A_T )
			( ON_B_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD3-FORMED_B_A_T )
			( WORD-FORMED )
		)
	)
	(:action MAKE3WORD_A_C_T
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( ONTABLE_T )
			( ON_C_T )
			( ON_A_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD3-FORMED_A_C_T )
			( WORD-FORMED )
		)
	)
	(:action MAKE3WORD_C_A_T
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( ONTABLE_T )
			( ON_A_T )
			( ON_C_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( WORD3-FORMED_C_A_T )
			( WORD-FORMED )
		)
	)
	(:action UNSTACK_T_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_T )
			( ON_T_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			(not ( HANDEMPTY ))
			(not ( ON_T_T ))
		)
	)
	(:action UNSTACK_T_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_T )
			( ON_T_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			( CLEAR_R )
			(not ( CLEAR_T ))
			(not ( HANDEMPTY ))
			(not ( ON_T_R ))
		)
	)
	(:action UNSTACK_T_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_T )
			( ON_T_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			( CLEAR_C )
			(not ( CLEAR_T ))
			(not ( HANDEMPTY ))
			(not ( ON_T_C ))
		)
	)
	(:action UNSTACK_T_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_T )
			( ON_T_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			( CLEAR_B )
			(not ( CLEAR_T ))
			(not ( HANDEMPTY ))
			(not ( ON_T_B ))
		)
	)
	(:action UNSTACK_T_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_T )
			( ON_T_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			( CLEAR_A )
			(not ( CLEAR_T ))
			(not ( HANDEMPTY ))
			(not ( ON_T_A ))
		)
	)
	(:action UNSTACK_R_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_R )
			( ON_R_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			( CLEAR_T )
			(not ( CLEAR_R ))
			(not ( HANDEMPTY ))
			(not ( ON_R_T ))
		)
	)
	(:action UNSTACK_R_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_R )
			( ON_R_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			(not ( HANDEMPTY ))
			(not ( ON_R_R ))
		)
	)
	(:action UNSTACK_R_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_R )
			( ON_R_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			( CLEAR_C )
			(not ( CLEAR_R ))
			(not ( HANDEMPTY ))
			(not ( ON_R_C ))
		)
	)
	(:action UNSTACK_R_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_R )
			( ON_R_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			( CLEAR_B )
			(not ( CLEAR_R ))
			(not ( HANDEMPTY ))
			(not ( ON_R_B ))
		)
	)
	(:action UNSTACK_R_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_R )
			( ON_R_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			( CLEAR_A )
			(not ( CLEAR_R ))
			(not ( HANDEMPTY ))
			(not ( ON_R_A ))
		)
	)
	(:action UNSTACK_C_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			( CLEAR_T )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_T ))
		)
	)
	(:action UNSTACK_C_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			( CLEAR_R )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_R ))
		)
	)
	(:action UNSTACK_C_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			(not ( HANDEMPTY ))
			(not ( ON_C_C ))
		)
	)
	(:action UNSTACK_C_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			( CLEAR_B )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_B ))
		)
	)
	(:action UNSTACK_C_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			( CLEAR_A )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_A ))
		)
	)
	(:action UNSTACK_B_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			( CLEAR_T )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_T ))
		)
	)
	(:action UNSTACK_B_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			( CLEAR_R )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_R ))
		)
	)
	(:action UNSTACK_B_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			( CLEAR_C )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_C ))
		)
	)
	(:action UNSTACK_B_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			(not ( HANDEMPTY ))
			(not ( ON_B_B ))
		)
	)
	(:action UNSTACK_B_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			( CLEAR_A )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_A ))
		)
	)
	(:action UNSTACK_A_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			( CLEAR_T )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_T ))
		)
	)
	(:action UNSTACK_A_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			( CLEAR_R )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_R ))
		)
	)
	(:action UNSTACK_A_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			( CLEAR_C )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_C ))
		)
	)
	(:action UNSTACK_A_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			( CLEAR_B )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_B ))
		)
	)
	(:action UNSTACK_A_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			(not ( HANDEMPTY ))
			(not ( ON_A_A ))
		)
	)
	(:action STACK_T_T
		:parameters ()
		:precondition
		(and
			( CLEAR_T )
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_T_T )
			(not ( HOLDING_T ))
		)
	)
	(:action STACK_T_R
		:parameters ()
		:precondition
		(and
			( CLEAR_R )
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_T )
			( HANDEMPTY )
			( ON_T_R )
			(not ( HOLDING_T ))
			(not ( CLEAR_R ))
		)
	)
	(:action STACK_T_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_T )
			( HANDEMPTY )
			( ON_T_C )
			(not ( HOLDING_T ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_T_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_T )
			( HANDEMPTY )
			( ON_T_B )
			(not ( HOLDING_T ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_T_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_T )
			( HANDEMPTY )
			( ON_T_A )
			(not ( HOLDING_T ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_R_T
		:parameters ()
		:precondition
		(and
			( CLEAR_T )
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_R )
			( HANDEMPTY )
			( ON_R_T )
			(not ( HOLDING_R ))
			(not ( CLEAR_T ))
		)
	)
	(:action STACK_R_R
		:parameters ()
		:precondition
		(and
			( CLEAR_R )
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_R_R )
			(not ( HOLDING_R ))
		)
	)
	(:action STACK_R_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_R )
			( HANDEMPTY )
			( ON_R_C )
			(not ( HOLDING_R ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_R_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_R )
			( HANDEMPTY )
			( ON_R_B )
			(not ( HOLDING_R ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_R_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_R )
			( HANDEMPTY )
			( ON_R_A )
			(not ( HOLDING_R ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_C_T
		:parameters ()
		:precondition
		(and
			( CLEAR_T )
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_T )
			(not ( HOLDING_C ))
			(not ( CLEAR_T ))
		)
	)
	(:action STACK_C_R
		:parameters ()
		:precondition
		(and
			( CLEAR_R )
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_R )
			(not ( HOLDING_C ))
			(not ( CLEAR_R ))
		)
	)
	(:action STACK_C_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_C_C )
			(not ( HOLDING_C ))
		)
	)
	(:action STACK_C_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_B )
			(not ( HOLDING_C ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_C_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_A )
			(not ( HOLDING_C ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_B_T
		:parameters ()
		:precondition
		(and
			( CLEAR_T )
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_T )
			(not ( HOLDING_B ))
			(not ( CLEAR_T ))
		)
	)
	(:action STACK_B_R
		:parameters ()
		:precondition
		(and
			( CLEAR_R )
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_R )
			(not ( HOLDING_B ))
			(not ( CLEAR_R ))
		)
	)
	(:action STACK_B_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_C )
			(not ( HOLDING_B ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_B_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_B_B )
			(not ( HOLDING_B ))
		)
	)
	(:action STACK_B_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_A )
			(not ( HOLDING_B ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_A_T
		:parameters ()
		:precondition
		(and
			( CLEAR_T )
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_T )
			(not ( HOLDING_A ))
			(not ( CLEAR_T ))
		)
	)
	(:action STACK_A_R
		:parameters ()
		:precondition
		(and
			( CLEAR_R )
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_R )
			(not ( HOLDING_A ))
			(not ( CLEAR_R ))
		)
	)
	(:action STACK_A_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_C )
			(not ( HOLDING_A ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_A_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_B )
			(not ( HOLDING_A ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_A_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HANDEMPTY )
			( ON_A_A )
			(not ( HOLDING_A ))
		)
	)
	(:action PUT-DOWN_T
		:parameters ()
		:precondition
		(and
			( HOLDING_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_T )
			( HANDEMPTY )
			( ONTABLE_T )
			(not ( HOLDING_T ))
		)
	)
	(:action PUT-DOWN_R
		:parameters ()
		:precondition
		(and
			( HOLDING_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_R )
			( HANDEMPTY )
			( ONTABLE_R )
			(not ( HOLDING_R ))
		)
	)
	(:action PUT-DOWN_C
		:parameters ()
		:precondition
		(and
			( HOLDING_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_C )
			( HANDEMPTY )
			( ONTABLE_C )
			(not ( HOLDING_C ))
		)
	)
	(:action PUT-DOWN_B
		:parameters ()
		:precondition
		(and
			( HOLDING_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_B )
			( HANDEMPTY )
			( ONTABLE_B )
			(not ( HOLDING_B ))
		)
	)
	(:action PUT-DOWN_A
		:parameters ()
		:precondition
		(and
			( HOLDING_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CLEAR_A )
			( HANDEMPTY )
			( ONTABLE_A )
			(not ( HOLDING_A ))
		)
	)
	(:action PICK-UP_T
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_T )
			( CLEAR_T )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_T )
			(not ( ONTABLE_T ))
			(not ( CLEAR_T ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICK-UP_R
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_R )
			( CLEAR_R )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_R )
			(not ( ONTABLE_R ))
			(not ( CLEAR_R ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICK-UP_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_C )
			( CLEAR_C )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_C )
			(not ( ONTABLE_C ))
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICK-UP_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_B )
			( CLEAR_B )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_B )
			(not ( ONTABLE_B ))
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICK-UP_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_A )
			( CLEAR_A )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HOLDING_A )
			(not ( ONTABLE_A ))
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
		)
	)

)

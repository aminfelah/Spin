	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 4: // STATE 2
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 5: // STATE 3
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 6: // STATE 4
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 7: // STATE 5
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 8: // STATE 6
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 9: // STATE 7
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 10: // STATE 8
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 11: // STATE 9
		;
		_m = unsend(now.f);
		;
		goto R999;

	case 12: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 13: // STATE 11
		;
		XX = 1;
		unrecv(((P1 *)_this)->me, XX-1, 0, ((P1 *)_this)->result, 1);
		((P1 *)_this)->result = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 15: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC calc */

	case 16: // STATE 1
		;
		XX = 1;
		unrecv(now.f, XX-1, 0, 2, 1);
		unrecv(now.f, XX-1, 1, ((P0 *)_this)->s, 0);
		((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 18: // STATE 3
		;
		XX = 1;
		unrecv(((P0 *)_this)->me, XX-1, 0, ((P0 *)_this)->lft, 1);
		((P0 *)_this)->lft = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 20: // STATE 5
		;
		XX = 1;
		unrecv(((P0 *)_this)->me, XX-1, 0, ((P0 *)_this)->rgt, 1);
		((P0 *)_this)->rgt = trpt->bup.oval;
		;
		;
		goto R999;

	case 21: // STATE 6
		;
	/* 0 */	((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;

	case 22: // STATE 7
		;
		_m = unsend(((P0 *)_this)->you);
		;
		goto R999;

	case 23: // STATE 8
		;
	/* 0 */	((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;

	case 24: // STATE 9
		;
		_m = unsend(((P0 *)_this)->you);
		;
		goto R999;

	case 25: // STATE 10
		;
	/* 0 */	((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;

	case 26: // STATE 11
		;
		_m = unsend(((P0 *)_this)->you);
		;
		goto R999;

	case 27: // STATE 12
		;
	/* 0 */	((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 29: // STATE 14
		;
		_m = unsend(((P0 *)_this)->you);
		;
		goto R999;
;
		;
		
	case 31: // STATE 19
		;
		XX = 1;
		unrecv(now.f, XX-1, 0, 1, 1);
		unrecv(now.f, XX-1, 1, ((P0 *)_this)->s, 0);
		((P0 *)_this)->s = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 20
		;
		_m = unsend(((P0 *)_this)->you);
		;
		goto R999;

	case 33: // STATE 23
		;
		p_restor(II);
		;
		;
		goto R999;
	}


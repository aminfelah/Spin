	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Recepteur */

	case 7: // STATE 1
		;
		XX = 1;
		unrecv(now.Fnr, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 8: // STATE 3
		;
		XX = 1;
		unrecv(now.Fnr, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 9: // STATE 7
		;
		_m = unsend(now.Frn);
		;
		goto R999;

	case 10: // STATE 9
		;
		XX = 1;
		unrecv(now.Fnr, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 11: // STATE 11
		;
		XX = 1;
		unrecv(now.Fnr, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 12: // STATE 15
		;
		_m = unsend(now.Frn);
		;
		goto R999;

	case 13: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Reseau */

	case 14: // STATE 1
		;
		XX = 1;
		unrecv(now.Frn, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 15: // STATE 3
		;
		XX = 1;
		unrecv(now.Fen, XX-1, 0, 5, 1);
		;
		;
		goto R999;

	case 16: // STATE 5
		;
		XX = 1;
		unrecv(now.Frn, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 17: // STATE 7
		;
		XX = 1;
		unrecv(now.Fen, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 18: // STATE 11
		;
		_m = unsend(now.Fne);
		;
		goto R999;

	case 19: // STATE 13
		;
		_m = unsend(now.Fnr);
		;
		goto R999;

	case 20: // STATE 15
		;
		_m = unsend(now.Fnr);
		;
		goto R999;

	case 21: // STATE 19
		;
		_m = unsend(now.Fne);
		;
		goto R999;

	case 22: // STATE 21
		;
		_m = unsend(now.Fnr);
		;
		goto R999;

	case 23: // STATE 23
		;
		_m = unsend(now.Fnr);
		;
		goto R999;

	case 24: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Emetteur */

	case 25: // STATE 1
		;
		_m = unsend(now.Fne);
		;
		goto R999;

	case 26: // STATE 3
		;
		XX = 1;
		unrecv(now.Fne, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 27: // STATE 5
		;
		XX = 1;
		unrecv(now.Fne, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 28: // STATE 9
		;
		_m = unsend(now.Fen);
		;
		goto R999;

	case 29: // STATE 11
		;
		XX = 1;
		unrecv(now.Fne, XX-1, 0, 6, 1);
		;
		;
		goto R999;

	case 30: // STATE 13
		;
		XX = 1;
		unrecv(now.Fne, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 31: // STATE 17
		;
		p_restor(II);
		;
		;
		goto R999;
	}


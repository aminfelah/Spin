#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - network.pml:48 - [(run Reseau())] (0:0:0 - 0)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - network.pml:48 - [(run Emetteur())] (0:0:0 - 0)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - network.pml:48 - [(run Recepteur())] (0:0:0 - 0)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - network.pml:48 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[3][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Recepteur */
	case 7: // STATE 1 - network.pml:38 - [Fnr?T0] (0:0:0 - 0)
		reached[2][1] = 1;
		if (q_len(now.Fnr) == 0) continue;

		XX=1;
		if (3 != qrecv(now.Fnr, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fnr-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fnr, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fnr);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 8: // STATE 3 - network.pml:39 - [Fnr?T0B] (0:0:0 - 0)
		reached[2][3] = 1;
		if (q_len(now.Fnr) == 0) continue;

		XX=1;
		if (2 != qrecv(now.Fnr, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fnr-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fnr, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fnr);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 9: // STATE 7 - network.pml:41 - [Frn!A1] (0:0:0 - 0)
		IfNotBlocked
		reached[2][7] = 1;
		if (q_full(now.Frn))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Frn);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Frn, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 9 - network.pml:43 - [Fnr?T1] (0:0:0 - 0)
		reached[2][9] = 1;
		if (q_len(now.Fnr) == 0) continue;

		XX=1;
		if (5 != qrecv(now.Fnr, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fnr-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fnr, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fnr);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 11: // STATE 11 - network.pml:44 - [Fnr?T1B] (0:0:0 - 0)
		reached[2][11] = 1;
		if (q_len(now.Fnr) == 0) continue;

		XX=1;
		if (1 != qrecv(now.Fnr, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fnr-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fnr, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fnr);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 12: // STATE 15 - network.pml:46 - [Frn!A0] (0:0:0 - 0)
		IfNotBlocked
		reached[2][15] = 1;
		if (q_full(now.Frn))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Frn);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Frn, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 17 - network.pml:47 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[2][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Reseau */
	case 14: // STATE 1 - network.pml:20 - [Frn?A0] (0:0:0 - 0)
		reached[1][1] = 1;
		if (q_len(now.Frn) == 0) continue;

		XX=1;
		if (6 != qrecv(now.Frn, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Frn-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Frn, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Frn);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 15: // STATE 3 - network.pml:21 - [Fen?T1] (0:0:0 - 0)
		reached[1][3] = 1;
		if (q_len(now.Fen) == 0) continue;

		XX=1;
		if (5 != qrecv(now.Fen, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fen-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fen, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fen);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 5 - network.pml:22 - [Frn?A1] (0:0:0 - 0)
		reached[1][5] = 1;
		if (q_len(now.Frn) == 0) continue;

		XX=1;
		if (4 != qrecv(now.Frn, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Frn-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Frn, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Frn);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 7 - network.pml:23 - [Fen?T0] (0:0:0 - 0)
		reached[1][7] = 1;
		if (q_len(now.Fen) == 0) continue;

		XX=1;
		if (3 != qrecv(now.Fen, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fen-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fen, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fen);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 11 - network.pml:25 - [Fne!A0] (0:0:0 - 0)
		IfNotBlocked
		reached[1][11] = 1;
		if (q_full(now.Fne))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fne);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fne, 0, 6, 1);
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 13 - network.pml:27 - [Fnr!T1] (0:0:0 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		if (q_full(now.Fnr))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fnr);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fnr, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 20: // STATE 15 - network.pml:28 - [Fnr!T1B] (0:0:0 - 0)
		IfNotBlocked
		reached[1][15] = 1;
		if (q_full(now.Fnr))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fnr);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fnr, 0, 1, 1);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 19 - network.pml:30 - [Fne!A1] (0:0:0 - 0)
		IfNotBlocked
		reached[1][19] = 1;
		if (q_full(now.Fne))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fne);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fne, 0, 4, 1);
		_m = 2; goto P999; /* 0 */
	case 22: // STATE 21 - network.pml:32 - [Fnr!T0] (0:0:0 - 0)
		IfNotBlocked
		reached[1][21] = 1;
		if (q_full(now.Fnr))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fnr);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fnr, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 23 - network.pml:33 - [Fnr!T0B] (0:0:0 - 0)
		IfNotBlocked
		reached[1][23] = 1;
		if (q_full(now.Fnr))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fnr);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fnr, 0, 2, 1);
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 27 - network.pml:35 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Emetteur */
	case 25: // STATE 1 - network.pml:7 - [Fne!T0] (0:0:0 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.Fne))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fne);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fne, 0, 3, 1);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 3 - network.pml:9 - [Fne?A0] (0:0:0 - 0)
		reached[0][3] = 1;
		if (q_len(now.Fne) == 0) continue;

		XX=1;
		if (6 != qrecv(now.Fne, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fne-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fne, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fne);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 27: // STATE 5 - network.pml:10 - [Fne?A1] (0:0:0 - 0)
		reached[0][5] = 1;
		if (q_len(now.Fne) == 0) continue;

		XX=1;
		if (4 != qrecv(now.Fne, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fne-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fne, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fne);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 9 - network.pml:12 - [Fen!T1] (0:0:0 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.Fen))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.Fen);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.Fen, 0, 5, 1);
		_m = 2; goto P999; /* 0 */
	case 29: // STATE 11 - network.pml:14 - [Fne?A0] (0:0:0 - 0)
		reached[0][11] = 1;
		if (q_len(now.Fne) == 0) continue;

		XX=1;
		if (6 != qrecv(now.Fne, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fne-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fne, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fne);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 13 - network.pml:15 - [Fne?A1] (0:0:0 - 0)
		reached[0][13] = 1;
		if (q_len(now.Fne) == 0) continue;

		XX=1;
		if (4 != qrecv(now.Fne, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.Fne-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.Fne, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.Fne);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 31: // STATE 17 - network.pml:17 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


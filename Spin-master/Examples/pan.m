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
	case 3: // STATE 1 - calculator.pml:33 - [f!operator,43] (0:0:0 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 43); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 2, 43, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 4: // STATE 2 - calculator.pml:34 - [f!operator,47] (0:0:0 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 47); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 2, 47, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 5: // STATE 3 - calculator.pml:35 - [f!value,84] (0:0:0 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 84); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 84, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 6: // STATE 4 - calculator.pml:36 - [f!value,2] (0:0:0 - 0)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 2, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 7: // STATE 5 - calculator.pml:37 - [f!operator,45] (0:0:0 - 0)
		IfNotBlocked
		reached[1][5] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 45); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 2, 45, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 8: // STATE 6 - calculator.pml:38 - [f!value,36] (0:0:0 - 0)
		IfNotBlocked
		reached[1][6] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 36); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 36, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 9: // STATE 7 - calculator.pml:39 - [f!operator,42] (0:0:0 - 0)
		IfNotBlocked
		reached[1][7] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 42); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 2, 42, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 8 - calculator.pml:40 - [f!value,3] (0:0:0 - 0)
		IfNotBlocked
		reached[1][8] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 3, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 9 - calculator.pml:41 - [f!value,4] (0:0:0 - 0)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.f))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.f, 0, 1, 4, 2);
		if (q_zero(now.f)) { boq = now.f; };
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 10 - calculator.pml:43 - [(run calc(me))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)_this)->me)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - calculator.pml:43 - [me?result] (0:0:1 - 0)
		reached[1][11] = 1;
		if (q_zero(((P1 *)_this)->me))
		{	if (boq != ((P1 *)_this)->me) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P1 *)_this)->me) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P1 *)_this)->result;
		;
		((P1 *)_this)->result = qrecv(((P1 *)_this)->me, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval(":init::result", ((P1 *)_this)->result);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->me);
		sprintf(simtmp, "%d", ((P1 *)_this)->result); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P1 *)_this)->me))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 14: // STATE 12 - calculator.pml:44 - [printf('result: %d\\n',result)] (0:0:0 - 0)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("result: %d\n", ((P1 *)_this)->result);
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - calculator.pml:45 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC calc */
	case 16: // STATE 1 - calculator.pml:14 - [f?operator,s] (0:0:1 - 0)
		reached[0][1] = 1;
		if (q_zero(now.f))
		{	if (boq != now.f) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.f) == 0) continue;

		XX=1;
		if (2 != qrecv(now.f, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->s;
		;
		((P0 *)_this)->s = qrecv(now.f, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("calc:s", ((P0 *)_this)->s);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.f);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->s); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.f))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 2 - calculator.pml:15 - [(run calc(me))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(addproc(II, 1, 0, ((P0 *)_this)->me)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 3 - calculator.pml:15 - [me?lft] (0:0:1 - 0)
		reached[0][3] = 1;
		if (q_zero(((P0 *)_this)->me))
		{	if (boq != ((P0 *)_this)->me) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P0 *)_this)->me) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->lft;
		;
		((P0 *)_this)->lft = qrecv(((P0 *)_this)->me, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("calc:lft", ((P0 *)_this)->lft);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->me);
		sprintf(simtmp, "%d", ((P0 *)_this)->lft); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P0 *)_this)->me))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 4 - calculator.pml:16 - [(run calc(me))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(addproc(II, 1, 0, ((P0 *)_this)->me)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 5 - calculator.pml:16 - [me?rgt] (0:0:1 - 0)
		reached[0][5] = 1;
		if (q_zero(((P0 *)_this)->me))
		{	if (boq != ((P0 *)_this)->me) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(((P0 *)_this)->me) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((P0 *)_this)->rgt;
		;
		((P0 *)_this)->rgt = qrecv(((P0 *)_this)->me, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("calc:rgt", ((P0 *)_this)->rgt);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)_this)->me);
		sprintf(simtmp, "%d", ((P0 *)_this)->rgt); strcat(simvals, simtmp);		}
#endif
		if (q_zero(((P0 *)_this)->me))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 6 - calculator.pml:18 - [((s==43))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((P0 *)_this)->s==43)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: s */  (trpt+1)->bup.oval = ((P0 *)_this)->s;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->s = 0;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 7 - calculator.pml:18 - [you!(lft+rgt)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (q_full(((P0 *)_this)->you))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->you);
		sprintf(simtmp, "%d", (((P0 *)_this)->lft+((P0 *)_this)->rgt)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->you, 0, (((P0 *)_this)->lft+((P0 *)_this)->rgt), 0, 1);
		if (q_zero(((P0 *)_this)->you)) { boq = ((P0 *)_this)->you; };
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 8 - calculator.pml:19 - [((s==45))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((P0 *)_this)->s==45)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: s */  (trpt+1)->bup.oval = ((P0 *)_this)->s;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->s = 0;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 9 - calculator.pml:19 - [you!(lft-rgt)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(((P0 *)_this)->you))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->you);
		sprintf(simtmp, "%d", (((P0 *)_this)->lft-((P0 *)_this)->rgt)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->you, 0, (((P0 *)_this)->lft-((P0 *)_this)->rgt), 0, 1);
		if (q_zero(((P0 *)_this)->you)) { boq = ((P0 *)_this)->you; };
		_m = 2; goto P999; /* 0 */
	case 25: // STATE 10 - calculator.pml:20 - [((s==42))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((P0 *)_this)->s==42)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: s */  (trpt+1)->bup.oval = ((P0 *)_this)->s;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->s = 0;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 11 - calculator.pml:20 - [you!(lft*rgt)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_full(((P0 *)_this)->you))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->you);
		sprintf(simtmp, "%d", (((P0 *)_this)->lft*((P0 *)_this)->rgt)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->you, 0, (((P0 *)_this)->lft*((P0 *)_this)->rgt), 0, 1);
		if (q_zero(((P0 *)_this)->you)) { boq = ((P0 *)_this)->you; };
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 12 - calculator.pml:21 - [((s==47))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((P0 *)_this)->s==47)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: s */  (trpt+1)->bup.oval = ((P0 *)_this)->s;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->s = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 13 - calculator.pml:21 - [assert((rgt!=0))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][13] = 1;
		spin_assert((((P0 *)_this)->rgt!=0), "(rgt!=0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 14 - calculator.pml:22 - [you!(lft/rgt)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][14] = 1;
		if (q_full(((P0 *)_this)->you))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->you);
		sprintf(simtmp, "%d", (((P0 *)_this)->lft/((P0 *)_this)->rgt)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->you, 0, (((P0 *)_this)->lft/((P0 *)_this)->rgt), 0, 1);
		if (q_zero(((P0 *)_this)->you)) { boq = ((P0 *)_this)->you; };
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 16 - calculator.pml:23 - [assert(0)] (0:0:0 - 0)
		IfNotBlocked
		reached[0][16] = 1;
		spin_assert(0, "0", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 19 - calculator.pml:25 - [f?value,s] (0:0:1 - 0)
		reached[0][19] = 1;
		if (q_zero(now.f))
		{	if (boq != now.f) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.f) == 0) continue;

		XX=1;
		if (1 != qrecv(now.f, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->s;
		;
		((P0 *)_this)->s = qrecv(now.f, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("calc:s", ((P0 *)_this)->s);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.f);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->s); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.f))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 20 - calculator.pml:25 - [you!s] (0:0:0 - 0)
		IfNotBlocked
		reached[0][20] = 1;
		if (q_full(((P0 *)_this)->you))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->you);
		sprintf(simtmp, "%d", ((P0 *)_this)->s); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->you, 0, ((P0 *)_this)->s, 0, 1);
		if (q_zero(((P0 *)_this)->you)) { boq = ((P0 *)_this)->you; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 23 - calculator.pml:27 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][23] = 1;
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


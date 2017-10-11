
;; Function vecaddgpu (vecaddgpu, funcdef_no=2, decl_uid=3597, cgraph_uid=2, symbol_order=6)

vecaddgpu (float * restrict c, float * a, float * b)
{
  int n.10;
  int i;
  _Bool D.3613;
  int n.4;
  struct .omp_data_t.7 .omp_data_arr.16;
  long unsigned int .omp_data_sizes.17[3];
  short unsigned int .omp_data_kinds.18[3];
  short unsigned int D.3674;
  short unsigned int D.3675;
  short unsigned int D.3676;
  struct .omp_data_t.8 .omp_data_arr.12;
  static long unsigned int .omp_data_sizes.13[4] = {0, 0, 0, 0};
  static short unsigned int .omp_data_kinds.14[4] = {15, 15, 15, 525};
  int n.15;
  unsigned long D.3663;
  int * D.3664;
  int * D.3665;
  unsigned long D.3666;
  int D.3667;
  void * D.3668;
  void * D.3669;
  void * D.3670;
  struct .omp_data_s.9 .omp_data_o.11;

  n.0_1 = n;
  _2 = n.0_1 > 1024;
  n.1_3 = n;
  _4 = (sizetype) n.1_3;
  _5 = _4 * 4;
  n.2_6 = n;
  _7 = (sizetype) n.2_6;
  _8 = _7 * 4;
  n.3_9 = n;
  _10 = (sizetype) n.3_9;
  _11 = _10 * 4;
  .omp_data_arr.16.D.3630 = c;
  .omp_data_arr.16.D.3631 = b;
  .omp_data_arr.16.D.3632 = a;
  .omp_data_sizes.17[0] = _5;
  .omp_data_sizes.17[1] = _8;
  .omp_data_sizes.17[2] = _11;
  D.3674 = _5 == 0 ? 527 : 514;
  .omp_data_kinds.18[0] = D.3674;
  D.3675 = _8 == 0 ? 527 : 513;
  .omp_data_kinds.18[1] = D.3675;
  D.3676 = _11 == 0 ? 527 : 513;
  .omp_data_kinds.18[2] = D.3676;
  #pragma omp target data if(_2) map(from:*c [len: _5]) map(to:*b [len: _8]) map(to:*a [len: _11])
  n.4 = n;
  D.3613 = n.4 > 1024;
  .omp_data_arr.12.D.3637 = b;
  .omp_data_arr.12.D.3639 = a;
  .omp_data_arr.12.D.3641 = c;
  n.15 = n;
  D.3663 = (unsigned long) n.15;
  D.3664 = (int *) D.3663;
  .omp_data_arr.12.n = D.3664;
  #pragma omp target num_teams(1) thread_limit(0) if(D.3613) map(alloc:MEM[(char *)b] [len: 0]) map(firstprivate:b [pointer assign, bias: 0]) map(alloc:MEM[(char *)a] [len: 0]) map(firstprivate:a [pointer assign, bias: 0]) map(alloc:MEM[(char *)c] [len: 0]) map(firstprivate:c [pointer assign, bias: 0]) firstprivate(n) [child fn: vecaddgpu._omp_fn.0 (.omp_data_arr.12, .omp_data_sizes.13, .omp_data_kinds.14)]
  .omp_data_i = (const struct .omp_data_t.8 & restrict) &.omp_data_arr.12;
  D.3665 = .omp_data_i->n;
  D.3666 = (unsigned long) D.3665;
  D.3667 = (int) D.3666;
  n = D.3667;
  D.3668 = .omp_data_i->D.3637;
  b = D.3668;
  D.3669 = .omp_data_i->D.3639;
  a = D.3669;
  D.3670 = .omp_data_i->D.3641;
  c = D.3670;
  n.5 = n;
  D.3615 = n.5 > 1024;
  .omp_data_o.11.b = b;
  .omp_data_o.11.a = a;
  .omp_data_o.11.c = c;
  .omp_data_o.11.n = n;
  #pragma omp parallel if(D.3615) firstprivate(b) firstprivate(a) firstprivate(c) firstprivate(n) [child fn: vecaddgpu._omp_fn.1 (.omp_data_o.11)]
  .omp_data_i = (struct .omp_data_s.9 & restrict) &.omp_data_o.11;
  b = .omp_data_i->b;
  a = .omp_data_i->a;
  c = .omp_data_i->c;
  n = .omp_data_i->n;
  n.6 = n;
  n.10 = n.6;
  #pragma omp for nowait
  for (i = 0; i < n.10; i = i + 1)
  D.3617 = (long unsigned int) i;
  D.3618 = D.3617 * 4;
  D.3619 = a + D.3618;
  D.3620 = *D.3619;
  D.3621 = (long unsigned int) i;
  D.3622 = D.3621 * 4;
  D.3623 = b + D.3622;
  D.3624 = *D.3623;
  D.3625 = (long unsigned int) i;
  D.3626 = D.3625 * 4;
  D.3627 = c + D.3626;
  D.3628 = D.3620 + D.3624;
  *D.3627 = D.3628;
  #pragma omp continue (i, i)
  #pragma omp return(nowait)
  #pragma omp return
  .omp_data_o.11 = {CLOBBER};
  #pragma omp return
  .omp_data_arr.12 = {CLOBBER};
  __builtin_GOMP_target_end_data ();
  #pragma omp return
  .omp_data_sizes.17 = {CLOBBER};
  .omp_data_kinds.18 = {CLOBBER};
  .omp_data_arr.16 = {CLOBBER};
  return;
}



;; Function init_array (init_array, funcdef_no=3, decl_uid=3600, cgraph_uid=3, symbol_order=7)

init_array ()
{
  int i;

  stdout.22_1 = stdout;
  __builtin_fwrite ("Inicializando os arrays.\n", 1, 25, stdout.22_1);
  i = 0;
  goto <D.3604>;
  <D.3603>:
  h_a.23_2 = h_a;
  _3 = (long unsigned int) i;
  _4 = _3 * 4;
  _5 = h_a.23_2 + _4;
  *_5 = 5.0e-1;
  h_b.24_6 = h_b;
  _7 = (long unsigned int) i;
  _8 = _7 * 4;
  _9 = h_b.24_6 + _8;
  *_9 = 5.0e-1;
  i = i + 1;
  <D.3604>:
  n.25_10 = n;
  if (i < n.25_10) goto <D.3603>; else goto <D.3605>;
  <D.3605>:
  return;
}



;; Function main (main, funcdef_no=4, decl_uid=3608, cgraph_uid=4, symbol_order=8)

main (int argc, char * * argv)
{
  int i;
  int D.3730;

  _1 = argv + 8;
  _2 = *_1;
  _3 = atoi (_2);
  n = _3;
  n.26_4 = n;
  _5 = (long unsigned int) n.26_4;
  _6 = _5 * 4;
  _7 = malloc (_6);
  h_a = _7;
  n.27_8 = n;
  _9 = (long unsigned int) n.27_8;
  _10 = _9 * 4;
  _11 = malloc (_10);
  h_b = _11;
  n.28_12 = n;
  _13 = (long unsigned int) n.28_12;
  _14 = _13 * 4;
  _15 = malloc (_14);
  h_c = _15;
  init_array ();
  h_b.29_16 = h_b;
  h_a.30_17 = h_a;
  h_c.31_18 = h_c;
  vecaddgpu (h_c.31_18, h_a.30_17, h_b.29_16);
  D.3730 = 0;
  goto <D.3731>;
  D.3730 = 0;
  goto <D.3731>;
  <D.3731>:
  return D.3730;
}



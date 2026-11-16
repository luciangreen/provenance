:- module(cases, [title/1, case/3]).
:- use_module('../prolog/provenance').
:- use_module(engine).
title('provenance').
content_g(C) :- rnd_int(0, 4, N), length(C, N), maplist([X]>>rnd_int(0, 9, X), C).
log_g(L) :- rnd_int(1, 5, N), numlist(1, N, Is), foldl([I, Have-L0, [Out|Have]-L1]>>( atom_concat(f, I, Out), rnd_pick(Have, X), rnd_pick(Have, Y), rnd_pick([sort, reverse, sum, double, concat], A), ( A == concat -> R = run(A, [X, Y], Out) ; R = run(A, [X], Out) ), append(L0, [R], L1) ), Is, [a, b]-[], _-L).
case(reproduce, [L, [a-A, b-B], F], reproduce) :- log_g(L), content_g(A), content_g(B), last(L, run(_, _, F)).
case(lineage, [L, F], lineage) :- log_g(L), last(L, run(_, _, F)).
case(depth, [L, F], depth) :- log_g(L), last(L, run(_, _, F)).

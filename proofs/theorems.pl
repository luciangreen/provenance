% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/provenance').

% Domain: sources a and b with contents of up to 2 numbers from 1..2; every log of up to 3 runs, each
% making a new file (f1, f2, f3) from files that already exist.
content(C) :- between(0, 2, N), length(C, N), maplist([X]>>between(1, 2, X), C).
srcs([a-A, b-B]) :- content(A), content(B).
alg1(A) :- member(A, [sort, reverse, sum, double]).
log(L) :- between(0, 3, N), length(L, N), build(L, 1, [a, b]).
build([], _, _).
build([R|Rs], I, Have) :- atom_concat(f, I, Out), ( alg1(A), member(X, Have), R = run(A, [X], Out) ; member(X, Have), member(Y, Have), R = run(concat, [X, Y], Out) ), I1 is I + 1, build(Rs, I1, [Out|Have]).

% 1. Reproducing any file from the sources alone gives exactly what the run made.
theorem(reproduce_equals_stored) :- forall(( log(L), length(L, N), N =< 2, srcs(S), produce(L, S, Fs), member(F-C, Fs) ), reproduce(L, S, F, C)).

% 2. A file's lineage is all sources, and it is just itself exactly when it is a source.
theorem(lineage_ends_in_sources) :- forall(( log(L), member(F, [a, b, f1, f2, f3]), ( F = a ; F = b ; member(run(_, _, F), L) ) ), ( lineage(L, F, Ls), forall(member(X, Ls), memberchk(X, [a, b])), iff(Ls == [F], memberchk(F, [a, b])) )).

% 3. Depth counts the runs on the longest path back to a source: sources are 0, each run adds 1.
theorem(depth_is_consistent) :- forall(( log(L), member(run(_, Ins, F), L) ), ( depth(L, F, D), maplist([I, X]>>depth(L, I, X), Ins, Xs), max_list(Xs, M), D =:= M + 1 )).

% 4. Changing a source not in a file's lineage never changes the file.
theorem(unrelated_sources_do_not_matter) :- forall(( log(L), length(L, N), N =< 2, member(run(_, _, F), L), lineage(L, F, Ls), \+ memberchk(b, Ls), content(B1), content(B2) ),
    ( reproduce(L, [a-[1], b-B1], F, X), reproduce(L, [a-[1], b-B2], F, Y), X == Y )).

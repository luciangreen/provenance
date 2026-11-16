% provenance: every file knows the algorithm and inputs that made it. A run log records
% run(Algorithm, InputFiles, OutputFile); files not made by any run are sources. From the log,
% lineage traces a file back to its sources, and reproduce re-runs the steps from the sources'
% contents, giving the stored content back, since every algorithm is deterministic.
% Contents are lists of numbers; algorithms: sort, reverse, sum, concat, double.
%?- reproduce([run(sort, [a], b), run(concat, [a, b], c)], [a-[3,1]], c, X).    % X = [3,1,1,3]
%?- lineage([run(sort, [a], b), run(concat, [a, b], c)], c, L).                 % L = [a]
:- module(provenance, [algo/3, produce/3, lineage/3, reproduce/4, producer/3, depth/3]).
:- use_module(library(lists)).
:- use_module(library(apply)).

algo(sort, [X], Y) :- msort(X, Y).
algo(reverse, [X], Y) :- reverse(X, Y).
algo(sum, [X], [S]) :- sum_list(X, S).
algo(double, [X], Y) :- maplist([A, B]>>(B is 2 * A), X, Y).
algo(concat, Xs, Y) :- append(Xs, Y).

% produce(+Log, +Sources, -Files): run the log in order, giving every file's content.
produce(Log, Src, Fs) :- foldl([run(A, Ins, Out), F0, F]>>( maplist([I, C]>>memberchk(I-C, F0), Ins, Cs), algo(A, Cs, R), F = [Out-R|F0] ), Log, Src, Fs).

producer(Log, F, run(A, Ins, F)) :- memberchk(run(A, Ins, F), Log).

% lineage(+Log, +File, -Sources): the source files it came from (sorted).
lineage(Log, F, S) :- ( producer(Log, F, run(_, Ins, F)) -> maplist([I, L]>>lineage(Log, I, L), Ins, Ls), append(Ls, S0), sort(S0, S) ; S = [F] ).

% reproduce(+Log, +Sources, +File, -Content): rebuild one file from the sources alone.
reproduce(Log, Src, F, C) :- ( producer(Log, F, run(A, Ins, F)) -> maplist([I, X]>>reproduce(Log, Src, I, X), Ins, Xs), algo(A, Xs, C) ; memberchk(F-C, Src) ).

depth(Log, F, D) :- ( producer(Log, F, run(_, Ins, F)) -> maplist([I, X]>>depth(Log, I, X), Ins, Xs), max_list(Xs, M), D is M + 1 ; D = 0 ).

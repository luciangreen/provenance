# provenance

every file knows the algorithm and inputs that made it. A run log records run(Algorithm, InputFiles, OutputFile); files not made by any run are sources. From the log, lineage traces a file back to its sources, and reproduce re-runs the steps from the sources' contents, giving the stored content back, since every algorithm is deterministic. Contents are lists of numbers; algorithms: sort, reverse, sum, concat, double.

## Use

```prolog
?- use_module(prolog/provenance).
?- reproduce([run(sort, [a], b), run(concat, [a, b], c)], [a-[3,1]], c, X).    % X = [3,1,1,3]
?- lineage([run(sort, [a], b), run(concat, [a, b], c)], c, L).                 % L = [a]
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. sources a and b with contents of up to 2 numbers from 1..2; every log of up to 3 runs, each

1. Reproducing any file from the sources alone gives exactly what the run made.
2. A file's lineage is all sources, and it is just itself exactly when it is a source.
3. Depth counts the runs on the longest path back to a source: sources are 0, each run adds 1.
4. Changing a source not in a file's lineage never changes the file.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.

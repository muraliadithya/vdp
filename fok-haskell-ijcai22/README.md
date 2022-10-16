# How to run on VDP puzzles

Install stack. Then:

> stack build<br/>
> stack exec fo-bottom-up-exe i path/to/puzzle

The 'i' is either:
- 0 runs the solver on a specific puzzle with no timeout
- 1 runs the solver on all puzzles in the given directory with 60 second timeout.

# Synthesizing first-order logic discriminators from bottom up

The bottom-up solver is not designed to solve VDP puzzles per se. It takes a set
of labeled models and a grammar, and searches for a discriminator in the grammar. We
can reduce from VDP to this setting by fixing a grammar and running the solver
once for each choice of target image. If a particular choice of target is wrong
and there is no discriminator, then (for large grammars) it can take very long to
exhaust the search space. Thus we run the solver for each possible choice of
target image concurrently, and return the first solution found, or wait until
all runs fail to find a solution. 

## How it works

The solver works by iteratively building larger formulas from smaller formulas.
It is essentially a brute force search in the grammar, with one exception. It
avoids all formulas which do not effectively use their connectives. For
instance, a conjunction of formulas <img
src="https://render.githubusercontent.com/render/math?math=\varphi_1"> and <img
src="https://render.githubusercontent.com/render/math?math=\varphi_2"> should
strictly decrease the number of viable variable assignments over the constituent
formulas. Similar considerations govern exploration of the other connectives.
This acts as a surprisingly good filter on formulas which need not be
considered. <!-- For instance, on the "allcatsonsofas_1" puzzle with combinator
"close (base \/ base)" and *without* progress, a discriminator is found in ~1000
seconds (Exists x1 Forall x0 (sofa(x0) \/ within(x0,x1))). With progress, the
same discriminator is found in 80 seconds. -->

## Comparison with SAT-based synthesis

The bottom-up solver differs from the SAT-based synthesizer in some important
ways. First, the bottom-up approach easily allows us to find more than a single
solution, if more than one exists.

Second, it is more flexible with respect to the grammar. The implementation is
compositional in the components of the given grammar. For instance, suppose we
have grammars G1 and G2 to capture two distinct possibilities for an expected
solution. We can search for a disjunctive formula in (G1 | G2) by simply running
the procedure on a grammar object (G1 | G2). The SAT-based synthesizer is less
flexible in this regard.



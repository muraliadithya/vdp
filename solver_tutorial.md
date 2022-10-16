# Discriminator Synthesis Tutorial

The command to use our solver is

```bash
$ python vdp_solver/scripts/vdpsolve.py /path/to/puzzle/IR  - <arguments>
```
Say your puzzle IR generated after the inference step is at `/content/processed` and the target discriminator is $$\exists\, person_1.\,\exists\, person_2.\, \exists\, ball.\, left(person_1,\,ball) \land right(person_2,\, ball)$$ which says that there is a ball in between two people. Then, run the following command to see what our tool finds

```bash
$ python vdp_solver/scripts/vdpsolve.py /content/processed  - 3 2
```
where the `3` is the number of quantifiers and the `2` is the number of conjuncts. This tells the solver to look for a discriminator of the specified shape/size. The second argument is optional, so you can just specify the number of quantifiers if you don't know the number of conjuncts. However, if you don't specify the number of conjuncts the tool is not guaranteed to find the formula with the smallest possible number of conjuncts.

To find the smallest formula, use

```bash
$ python vdp_solver/scripts/vdpsolve.py /path/to/puzzle/IR  - 3 --autotune
```

This command will treat the number of quantifiers as an upper bound and return the smallest formula within the specified parameters. The order it uses is a lexicographic one with the following hierarchy: formulas are smaller if they have (1) lesser number of quantifiers (2) existentially quantified rather than universally (3) outer quantifiers are existential (so $$\exists\forall$$ is smaller than $$\forall\exists$$) (4) lesser conjuncts, if the quantification pattern is the same.

Some other helpful arguments:
- `-E` find a discriminator that is purely existentially quantified
- `-A` find a discriminator that is purely universally quantified

All these options can also be used with `--autotune`. Parameters are usually treated as an exact description of the target discriminator, but they are interpreted as an upper bound if `--autotune` is used.

To see all these options and more, see the help menu by running

```bash
python vdp_solver/scripts/vdpsolve.py .  - -h
```

Some notes:
- Make sure that you are in the project directory (`.../vdp`) when you run these commands to avoid any path resolution issues.
- Notice the `-` in the middle of the command!
- The discriminators are assumed to be in [prenex form](https://en.wikipedia.org/wiki/Prenex_normal_form). The options above specify the size and quantifier pattern only for such formulas. If your target discriminator is not in prenex form, convert the formula to prenex form first and then calculate what options are needed.
- We usually use a timeout of 1 to 2 minutes. If our solver can't find a discriminator by then, it either terminates saying that there is no discriminator in the given search space or runs out of resources.
- The solver works fastest when the number of quantifiers is 3 or lower. When there are three quantifiers, we encourage using -E first before using --autotune since existential-only discriminators are easier to find if they exist, and also easier to report if they don't exist.

#!/bin/bash

for d in $1; do
declare -A attributes

while IFS='=' read attr val
do
    attributes[$attr]=$val
done < "${d}/info.txt"

(echo "Puzzle ${d}"; timeout 7 /usr/bin/time -o $2 -f "real: %E, user: %U" --append python3 scripts/vdpsolve.py "$d" - "${attributes[size]}" --autotune
exit_status=$?
if [[ $exit_status -eq 124 ]]; then
    echo "Timeout"
fi;
echo ""
) >> $2
done # end of loop over puzzle folders



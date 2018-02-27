#/usr/bin/env bash

# path to pr2plan #
PR2PLAN_PATH=$(locate pr2plan | head -n 1)

# ground domain and problem input using pr2plan #
# rm -f *-domain.pddl *-problem.pddl obs.dat
$PR2PLAN_PATH -d $1 -i $2 -o null-obs.dat > stdout.txt

# post-process grounded domain and problem files #
cat pr-domain.pddl | grep -vE "(EXPLAIN|increase|functions)" > tr-domain.pddl
cat pr-problem.pddl | grep -vE "(EXPLAIN|increase|metric)" > tr-problem.pddl

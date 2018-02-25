begin_version
3
end_version
begin_metric
0
end_metric
14
begin_variable
var0
-1
3
Atom at(kitchen)
Atom at(lab)
Atom at(office)
end_variable
begin_variable
var1
-1
2
Atom blocking()
NegatedAtom blocking()
end_variable
begin_variable
var2
-1
6
Atom holding(blue)
Atom on(blue, green)
Atom on(blue, orange)
Atom on(blue, red)
Atom on(blue, yellow)
Atom ontable(blue)
end_variable
begin_variable
var3
-1
6
Atom holding(green)
Atom on(green, blue)
Atom on(green, orange)
Atom on(green, red)
Atom on(green, yellow)
Atom ontable(green)
end_variable
begin_variable
var4
-1
6
Atom holding(orange)
Atom on(orange, blue)
Atom on(orange, green)
Atom on(orange, red)
Atom on(orange, yellow)
Atom ontable(orange)
end_variable
begin_variable
var5
-1
6
Atom holding(red)
Atom on(red, blue)
Atom on(red, green)
Atom on(red, orange)
Atom on(red, yellow)
Atom ontable(red)
end_variable
begin_variable
var6
-1
6
Atom holding(yellow)
Atom on(yellow, blue)
Atom on(yellow, green)
Atom on(yellow, orange)
Atom on(yellow, red)
Atom ontable(yellow)
end_variable
begin_variable
var7
-1
2
Atom clear(blue)
NegatedAtom clear(blue)
end_variable
begin_variable
var8
-1
2
Atom clear(green)
NegatedAtom clear(green)
end_variable
begin_variable
var9
-1
2
Atom clear(orange)
NegatedAtom clear(orange)
end_variable
begin_variable
var10
-1
2
Atom clear(red)
NegatedAtom clear(red)
end_variable
begin_variable
var11
-1
2
Atom clear(yellow)
NegatedAtom clear(yellow)
end_variable
begin_variable
var12
-1
2
Atom handempty()
NegatedAtom handempty()
end_variable
begin_variable
var13
-1
2
Atom tower3-formed(red)
NegatedAtom tower3-formed(red)
end_variable
6
begin_mutex_group
6
7 0
2 0
3 1
4 1
5 1
6 1
end_mutex_group
begin_mutex_group
6
8 0
2 1
3 0
4 2
5 2
6 2
end_mutex_group
begin_mutex_group
6
9 0
2 2
3 2
4 0
5 3
6 3
end_mutex_group
begin_mutex_group
6
10 0
2 3
3 3
4 3
5 0
6 4
end_mutex_group
begin_mutex_group
6
11 0
2 4
3 4
4 4
5 4
6 0
end_mutex_group
begin_mutex_group
6
12 0
2 0
3 0
4 0
5 0
6 0
end_mutex_group
begin_state
1
1
5
5
5
4
5
0
0
0
0
1
0
1
end_state
begin_goal
2
1 1
13 0
end_goal
70
begin_operator
blocking 
1
0 1
1
0 1 -1 0
1
end_operator
begin_operator
form3tower red blue green
4
10 0
2 1
3 5
5 1
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red blue orange
4
10 0
2 2
4 5
5 1
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red blue yellow
4
10 0
2 4
5 1
6 5
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red green blue
4
10 0
2 5
3 1
5 2
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red green orange
4
10 0
3 2
4 5
5 2
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red green yellow
4
10 0
3 4
5 2
6 5
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red orange blue
4
10 0
2 5
4 1
5 3
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red orange green
4
10 0
3 5
4 2
5 3
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red orange yellow
4
10 0
4 4
5 3
6 5
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red yellow blue
4
10 0
2 5
5 4
6 1
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red yellow green
4
10 0
3 5
5 4
6 2
1
0 13 -1 0
1
end_operator
begin_operator
form3tower red yellow orange
4
10 0
4 5
5 4
6 3
1
0 13 -1 0
1
end_operator
begin_operator
move kitchen lab
1
1 1
1
0 0 0 1
1
end_operator
begin_operator
move kitchen office
1
1 1
1
0 0 0 2
1
end_operator
begin_operator
move lab kitchen
1
1 1
1
0 0 1 0
1
end_operator
begin_operator
move lab office
1
1 1
1
0 0 1 2
1
end_operator
begin_operator
move office kitchen
1
1 1
1
0 0 2 0
1
end_operator
begin_operator
move office lab
1
1 1
1
0 0 2 1
1
end_operator
begin_operator
pick-up blue
1
1 0
3
0 7 0 1
0 12 0 1
0 2 5 0
1
end_operator
begin_operator
pick-up green
1
1 0
3
0 8 0 1
0 12 0 1
0 3 5 0
1
end_operator
begin_operator
pick-up orange
1
1 0
3
0 9 0 1
0 12 0 1
0 4 5 0
1
end_operator
begin_operator
pick-up red
1
1 0
3
0 10 0 1
0 12 0 1
0 5 5 0
1
end_operator
begin_operator
pick-up yellow
1
1 0
3
0 11 0 1
0 12 0 1
0 6 5 0
1
end_operator
begin_operator
put-down blue
1
1 0
3
0 7 -1 0
0 12 -1 0
0 2 0 5
1
end_operator
begin_operator
put-down green
1
1 0
3
0 8 -1 0
0 12 -1 0
0 3 0 5
1
end_operator
begin_operator
put-down orange
1
1 0
3
0 9 -1 0
0 12 -1 0
0 4 0 5
1
end_operator
begin_operator
put-down red
1
1 0
3
0 10 -1 0
0 12 -1 0
0 5 0 5
1
end_operator
begin_operator
put-down yellow
1
1 0
3
0 11 -1 0
0 12 -1 0
0 6 0 5
1
end_operator
begin_operator
stack blue green
1
1 0
4
0 7 -1 0
0 8 0 1
0 12 -1 0
0 2 0 1
1
end_operator
begin_operator
stack blue orange
1
1 0
4
0 7 -1 0
0 9 0 1
0 12 -1 0
0 2 0 2
1
end_operator
begin_operator
stack blue red
1
1 0
4
0 7 -1 0
0 10 0 1
0 12 -1 0
0 2 0 3
1
end_operator
begin_operator
stack blue yellow
1
1 0
4
0 7 -1 0
0 11 0 1
0 12 -1 0
0 2 0 4
1
end_operator
begin_operator
stack green blue
1
1 0
4
0 7 0 1
0 8 -1 0
0 12 -1 0
0 3 0 1
1
end_operator
begin_operator
stack green orange
1
1 0
4
0 8 -1 0
0 9 0 1
0 12 -1 0
0 3 0 2
1
end_operator
begin_operator
stack green red
1
1 0
4
0 8 -1 0
0 10 0 1
0 12 -1 0
0 3 0 3
1
end_operator
begin_operator
stack green yellow
1
1 0
4
0 8 -1 0
0 11 0 1
0 12 -1 0
0 3 0 4
1
end_operator
begin_operator
stack orange blue
1
1 0
4
0 7 0 1
0 9 -1 0
0 12 -1 0
0 4 0 1
1
end_operator
begin_operator
stack orange green
1
1 0
4
0 8 0 1
0 9 -1 0
0 12 -1 0
0 4 0 2
1
end_operator
begin_operator
stack orange red
1
1 0
4
0 9 -1 0
0 10 0 1
0 12 -1 0
0 4 0 3
1
end_operator
begin_operator
stack orange yellow
1
1 0
4
0 9 -1 0
0 11 0 1
0 12 -1 0
0 4 0 4
1
end_operator
begin_operator
stack red blue
1
1 0
4
0 7 0 1
0 10 -1 0
0 12 -1 0
0 5 0 1
1
end_operator
begin_operator
stack red green
1
1 0
4
0 8 0 1
0 10 -1 0
0 12 -1 0
0 5 0 2
1
end_operator
begin_operator
stack red orange
1
1 0
4
0 9 0 1
0 10 -1 0
0 12 -1 0
0 5 0 3
1
end_operator
begin_operator
stack red yellow
1
1 0
4
0 10 -1 0
0 11 0 1
0 12 -1 0
0 5 0 4
1
end_operator
begin_operator
stack yellow blue
1
1 0
4
0 7 0 1
0 11 -1 0
0 12 -1 0
0 6 0 1
1
end_operator
begin_operator
stack yellow green
1
1 0
4
0 8 0 1
0 11 -1 0
0 12 -1 0
0 6 0 2
1
end_operator
begin_operator
stack yellow orange
1
1 0
4
0 9 0 1
0 11 -1 0
0 12 -1 0
0 6 0 3
1
end_operator
begin_operator
stack yellow red
1
1 0
4
0 10 0 1
0 11 -1 0
0 12 -1 0
0 6 0 4
1
end_operator
begin_operator
stop-blocking 
0
1
0 1 0 1
1
end_operator
begin_operator
unstack blue green
1
1 0
4
0 7 0 1
0 8 -1 0
0 12 0 1
0 2 1 0
1
end_operator
begin_operator
unstack blue orange
1
1 0
4
0 7 0 1
0 9 -1 0
0 12 0 1
0 2 2 0
1
end_operator
begin_operator
unstack blue red
1
1 0
4
0 7 0 1
0 10 -1 0
0 12 0 1
0 2 3 0
1
end_operator
begin_operator
unstack blue yellow
1
1 0
4
0 7 0 1
0 11 -1 0
0 12 0 1
0 2 4 0
1
end_operator
begin_operator
unstack green blue
1
1 0
4
0 7 -1 0
0 8 0 1
0 12 0 1
0 3 1 0
1
end_operator
begin_operator
unstack green orange
1
1 0
4
0 8 0 1
0 9 -1 0
0 12 0 1
0 3 2 0
1
end_operator
begin_operator
unstack green red
1
1 0
4
0 8 0 1
0 10 -1 0
0 12 0 1
0 3 3 0
1
end_operator
begin_operator
unstack green yellow
1
1 0
4
0 8 0 1
0 11 -1 0
0 12 0 1
0 3 4 0
1
end_operator
begin_operator
unstack orange blue
1
1 0
4
0 7 -1 0
0 9 0 1
0 12 0 1
0 4 1 0
1
end_operator
begin_operator
unstack orange green
1
1 0
4
0 8 -1 0
0 9 0 1
0 12 0 1
0 4 2 0
1
end_operator
begin_operator
unstack orange red
1
1 0
4
0 9 0 1
0 10 -1 0
0 12 0 1
0 4 3 0
1
end_operator
begin_operator
unstack orange yellow
1
1 0
4
0 9 0 1
0 11 -1 0
0 12 0 1
0 4 4 0
1
end_operator
begin_operator
unstack red blue
1
1 0
4
0 7 -1 0
0 10 0 1
0 12 0 1
0 5 1 0
1
end_operator
begin_operator
unstack red green
1
1 0
4
0 8 -1 0
0 10 0 1
0 12 0 1
0 5 2 0
1
end_operator
begin_operator
unstack red orange
1
1 0
4
0 9 -1 0
0 10 0 1
0 12 0 1
0 5 3 0
1
end_operator
begin_operator
unstack red yellow
1
1 0
4
0 10 0 1
0 11 -1 0
0 12 0 1
0 5 4 0
1
end_operator
begin_operator
unstack yellow blue
1
1 0
4
0 7 -1 0
0 11 0 1
0 12 0 1
0 6 1 0
1
end_operator
begin_operator
unstack yellow green
1
1 0
4
0 8 -1 0
0 11 0 1
0 12 0 1
0 6 2 0
1
end_operator
begin_operator
unstack yellow orange
1
1 0
4
0 9 -1 0
0 11 0 1
0 12 0 1
0 6 3 0
1
end_operator
begin_operator
unstack yellow red
1
1 0
4
0 10 -1 0
0 11 0 1
0 12 0 1
0 6 4 0
1
end_operator
0

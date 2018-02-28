begin_version
3
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
2
Atom clear(a)
NegatedAtom clear(a)
end_variable
begin_variable
var1
-1
2
Atom clear(b)
NegatedAtom clear(b)
end_variable
begin_variable
var2
-1
2
Atom clear(g)
NegatedAtom clear(g)
end_variable
begin_variable
var3
-1
2
Atom clear(o)
NegatedAtom clear(o)
end_variable
begin_variable
var4
-1
2
Atom clear(r)
NegatedAtom clear(r)
end_variable
begin_variable
var5
-1
2
Atom clear(t)
NegatedAtom clear(t)
end_variable
begin_variable
var6
-1
2
Atom handempty()
NegatedAtom handempty()
end_variable
begin_variable
var7
-1
7
Atom holding(a)
Atom on(a, b)
Atom on(a, g)
Atom on(a, o)
Atom on(a, r)
Atom on(a, t)
Atom ontable(a)
end_variable
begin_variable
var8
-1
7
Atom holding(b)
Atom on(b, a)
Atom on(b, g)
Atom on(b, o)
Atom on(b, r)
Atom on(b, t)
Atom ontable(b)
end_variable
begin_variable
var9
-1
7
Atom holding(g)
Atom on(g, a)
Atom on(g, b)
Atom on(g, o)
Atom on(g, r)
Atom on(g, t)
Atom ontable(g)
end_variable
begin_variable
var10
-1
7
Atom holding(o)
Atom on(o, a)
Atom on(o, b)
Atom on(o, g)
Atom on(o, r)
Atom on(o, t)
Atom ontable(o)
end_variable
begin_variable
var11
-1
7
Atom holding(r)
Atom on(r, a)
Atom on(r, b)
Atom on(r, g)
Atom on(r, o)
Atom on(r, t)
Atom ontable(r)
end_variable
begin_variable
var12
-1
7
Atom holding(t)
Atom on(t, a)
Atom on(t, b)
Atom on(t, g)
Atom on(t, o)
Atom on(t, r)
Atom ontable(t)
end_variable
begin_variable
var13
-1
2
Atom word-formed(b, o, a, t)
NegatedAtom word-formed(b, o, a, t)
end_variable
begin_variable
var14
-1
2
Atom word-formed(b, r, a, t)
NegatedAtom word-formed(b, r, a, t)
end_variable
begin_variable
var15
-1
2
Atom word-formed(g, o, a, t)
NegatedAtom word-formed(g, o, a, t)
end_variable
13
begin_mutex_group
7
0 0
7 0
8 1
9 1
10 1
11 1
12 1
end_mutex_group
begin_mutex_group
7
1 0
7 1
8 0
9 2
10 2
11 2
12 2
end_mutex_group
begin_mutex_group
7
2 0
7 2
8 2
9 0
10 3
11 3
12 3
end_mutex_group
begin_mutex_group
7
3 0
7 3
8 3
9 3
10 0
11 4
12 4
end_mutex_group
begin_mutex_group
7
4 0
7 4
8 4
9 4
10 4
11 0
12 5
end_mutex_group
begin_mutex_group
7
5 0
7 5
8 5
9 5
10 5
11 5
12 0
end_mutex_group
begin_mutex_group
7
6 0
7 0
8 0
9 0
10 0
11 0
12 0
end_mutex_group
begin_mutex_group
7
7 0
7 1
7 2
7 3
7 4
7 5
7 6
end_mutex_group
begin_mutex_group
7
8 0
8 1
8 2
8 3
8 4
8 5
8 6
end_mutex_group
begin_mutex_group
7
9 0
9 1
9 2
9 3
9 4
9 5
9 6
end_mutex_group
begin_mutex_group
7
10 0
10 1
10 2
10 3
10 4
10 5
10 6
end_mutex_group
begin_mutex_group
7
11 0
11 1
11 2
11 3
11 4
11 5
11 6
end_mutex_group
begin_mutex_group
7
12 0
12 1
12 2
12 3
12 4
12 5
12 6
end_mutex_group
begin_state
0
0
0
0
0
0
0
6
6
6
6
6
6
1
1
1
end_state
begin_goal
1
14 0
end_goal
75
begin_operator
makeword b o a t
5
1 0
7 5
8 3
10 1
12 6
1
0 13 -1 0
1
end_operator
begin_operator
makeword b r a t
5
1 0
7 5
8 4
11 1
12 6
1
0 14 -1 0
1
end_operator
begin_operator
makeword g o a t
5
2 0
7 5
9 3
10 1
12 6
1
0 15 -1 0
1
end_operator
begin_operator
pick-up a
0
3
0 0 0 1
0 6 0 1
0 7 6 0
1
end_operator
begin_operator
pick-up b
0
3
0 1 0 1
0 6 0 1
0 8 6 0
1
end_operator
begin_operator
pick-up g
0
3
0 2 0 1
0 6 0 1
0 9 6 0
1
end_operator
begin_operator
pick-up o
0
3
0 3 0 1
0 6 0 1
0 10 6 0
1
end_operator
begin_operator
pick-up r
0
3
0 4 0 1
0 6 0 1
0 11 6 0
1
end_operator
begin_operator
pick-up t
0
3
0 5 0 1
0 6 0 1
0 12 6 0
1
end_operator
begin_operator
put-down a
0
3
0 0 -1 0
0 6 -1 0
0 7 0 6
1
end_operator
begin_operator
put-down b
0
3
0 1 -1 0
0 6 -1 0
0 8 0 6
1
end_operator
begin_operator
put-down g
0
3
0 2 -1 0
0 6 -1 0
0 9 0 6
1
end_operator
begin_operator
put-down o
0
3
0 3 -1 0
0 6 -1 0
0 10 0 6
1
end_operator
begin_operator
put-down r
0
3
0 4 -1 0
0 6 -1 0
0 11 0 6
1
end_operator
begin_operator
put-down t
0
3
0 5 -1 0
0 6 -1 0
0 12 0 6
1
end_operator
begin_operator
stack a b
0
4
0 0 -1 0
0 1 0 1
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
stack a g
0
4
0 0 -1 0
0 2 0 1
0 6 -1 0
0 7 0 2
1
end_operator
begin_operator
stack a o
0
4
0 0 -1 0
0 3 0 1
0 6 -1 0
0 7 0 3
1
end_operator
begin_operator
stack a r
0
4
0 0 -1 0
0 4 0 1
0 6 -1 0
0 7 0 4
1
end_operator
begin_operator
stack a t
0
4
0 0 -1 0
0 5 0 1
0 6 -1 0
0 7 0 5
1
end_operator
begin_operator
stack b a
0
4
0 0 0 1
0 1 -1 0
0 6 -1 0
0 8 0 1
1
end_operator
begin_operator
stack b g
0
4
0 1 -1 0
0 2 0 1
0 6 -1 0
0 8 0 2
1
end_operator
begin_operator
stack b o
0
4
0 1 -1 0
0 3 0 1
0 6 -1 0
0 8 0 3
1
end_operator
begin_operator
stack b r
0
4
0 1 -1 0
0 4 0 1
0 6 -1 0
0 8 0 4
1
end_operator
begin_operator
stack b t
0
4
0 1 -1 0
0 5 0 1
0 6 -1 0
0 8 0 5
1
end_operator
begin_operator
stack g a
0
4
0 0 0 1
0 2 -1 0
0 6 -1 0
0 9 0 1
1
end_operator
begin_operator
stack g b
0
4
0 1 0 1
0 2 -1 0
0 6 -1 0
0 9 0 2
1
end_operator
begin_operator
stack g o
0
4
0 2 -1 0
0 3 0 1
0 6 -1 0
0 9 0 3
1
end_operator
begin_operator
stack g r
0
4
0 2 -1 0
0 4 0 1
0 6 -1 0
0 9 0 4
1
end_operator
begin_operator
stack g t
0
4
0 2 -1 0
0 5 0 1
0 6 -1 0
0 9 0 5
1
end_operator
begin_operator
stack o a
0
4
0 0 0 1
0 3 -1 0
0 6 -1 0
0 10 0 1
1
end_operator
begin_operator
stack o b
0
4
0 1 0 1
0 3 -1 0
0 6 -1 0
0 10 0 2
1
end_operator
begin_operator
stack o g
0
4
0 2 0 1
0 3 -1 0
0 6 -1 0
0 10 0 3
1
end_operator
begin_operator
stack o r
0
4
0 3 -1 0
0 4 0 1
0 6 -1 0
0 10 0 4
1
end_operator
begin_operator
stack o t
0
4
0 3 -1 0
0 5 0 1
0 6 -1 0
0 10 0 5
1
end_operator
begin_operator
stack r a
0
4
0 0 0 1
0 4 -1 0
0 6 -1 0
0 11 0 1
1
end_operator
begin_operator
stack r b
0
4
0 1 0 1
0 4 -1 0
0 6 -1 0
0 11 0 2
1
end_operator
begin_operator
stack r g
0
4
0 2 0 1
0 4 -1 0
0 6 -1 0
0 11 0 3
1
end_operator
begin_operator
stack r o
0
4
0 3 0 1
0 4 -1 0
0 6 -1 0
0 11 0 4
1
end_operator
begin_operator
stack r t
0
4
0 4 -1 0
0 5 0 1
0 6 -1 0
0 11 0 5
1
end_operator
begin_operator
stack t a
0
4
0 0 0 1
0 5 -1 0
0 6 -1 0
0 12 0 1
1
end_operator
begin_operator
stack t b
0
4
0 1 0 1
0 5 -1 0
0 6 -1 0
0 12 0 2
1
end_operator
begin_operator
stack t g
0
4
0 2 0 1
0 5 -1 0
0 6 -1 0
0 12 0 3
1
end_operator
begin_operator
stack t o
0
4
0 3 0 1
0 5 -1 0
0 6 -1 0
0 12 0 4
1
end_operator
begin_operator
stack t r
0
4
0 4 0 1
0 5 -1 0
0 6 -1 0
0 12 0 5
1
end_operator
begin_operator
unstack a b
0
4
0 0 0 1
0 1 -1 0
0 6 0 1
0 7 1 0
1
end_operator
begin_operator
unstack a g
0
4
0 0 0 1
0 2 -1 0
0 6 0 1
0 7 2 0
1
end_operator
begin_operator
unstack a o
0
4
0 0 0 1
0 3 -1 0
0 6 0 1
0 7 3 0
1
end_operator
begin_operator
unstack a r
0
4
0 0 0 1
0 4 -1 0
0 6 0 1
0 7 4 0
1
end_operator
begin_operator
unstack a t
0
4
0 0 0 1
0 5 -1 0
0 6 0 1
0 7 5 0
1
end_operator
begin_operator
unstack b a
0
4
0 0 -1 0
0 1 0 1
0 6 0 1
0 8 1 0
1
end_operator
begin_operator
unstack b g
0
4
0 1 0 1
0 2 -1 0
0 6 0 1
0 8 2 0
1
end_operator
begin_operator
unstack b o
0
4
0 1 0 1
0 3 -1 0
0 6 0 1
0 8 3 0
1
end_operator
begin_operator
unstack b r
0
4
0 1 0 1
0 4 -1 0
0 6 0 1
0 8 4 0
1
end_operator
begin_operator
unstack b t
0
4
0 1 0 1
0 5 -1 0
0 6 0 1
0 8 5 0
1
end_operator
begin_operator
unstack g a
0
4
0 0 -1 0
0 2 0 1
0 6 0 1
0 9 1 0
1
end_operator
begin_operator
unstack g b
0
4
0 1 -1 0
0 2 0 1
0 6 0 1
0 9 2 0
1
end_operator
begin_operator
unstack g o
0
4
0 2 0 1
0 3 -1 0
0 6 0 1
0 9 3 0
1
end_operator
begin_operator
unstack g r
0
4
0 2 0 1
0 4 -1 0
0 6 0 1
0 9 4 0
1
end_operator
begin_operator
unstack g t
0
4
0 2 0 1
0 5 -1 0
0 6 0 1
0 9 5 0
1
end_operator
begin_operator
unstack o a
0
4
0 0 -1 0
0 3 0 1
0 6 0 1
0 10 1 0
1
end_operator
begin_operator
unstack o b
0
4
0 1 -1 0
0 3 0 1
0 6 0 1
0 10 2 0
1
end_operator
begin_operator
unstack o g
0
4
0 2 -1 0
0 3 0 1
0 6 0 1
0 10 3 0
1
end_operator
begin_operator
unstack o r
0
4
0 3 0 1
0 4 -1 0
0 6 0 1
0 10 4 0
1
end_operator
begin_operator
unstack o t
0
4
0 3 0 1
0 5 -1 0
0 6 0 1
0 10 5 0
1
end_operator
begin_operator
unstack r a
0
4
0 0 -1 0
0 4 0 1
0 6 0 1
0 11 1 0
1
end_operator
begin_operator
unstack r b
0
4
0 1 -1 0
0 4 0 1
0 6 0 1
0 11 2 0
1
end_operator
begin_operator
unstack r g
0
4
0 2 -1 0
0 4 0 1
0 6 0 1
0 11 3 0
1
end_operator
begin_operator
unstack r o
0
4
0 3 -1 0
0 4 0 1
0 6 0 1
0 11 4 0
1
end_operator
begin_operator
unstack r t
0
4
0 4 0 1
0 5 -1 0
0 6 0 1
0 11 5 0
1
end_operator
begin_operator
unstack t a
0
4
0 0 -1 0
0 5 0 1
0 6 0 1
0 12 1 0
1
end_operator
begin_operator
unstack t b
0
4
0 1 -1 0
0 5 0 1
0 6 0 1
0 12 2 0
1
end_operator
begin_operator
unstack t g
0
4
0 2 -1 0
0 5 0 1
0 6 0 1
0 12 3 0
1
end_operator
begin_operator
unstack t o
0
4
0 3 -1 0
0 5 0 1
0 6 0 1
0 12 4 0
1
end_operator
begin_operator
unstack t r
0
4
0 4 -1 0
0 5 0 1
0 6 0 1
0 12 5 0
1
end_operator
0

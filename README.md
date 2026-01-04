# unifiedAddressVisualizer
UA "randomart" idea that almost feels like a digital stamp. 

---

Let the following "Primes in order" map be defined:

**P** = `{2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157}`

---
Let the following map **U** ( digit mapper ) be defined:

```markdown
UA digits -> Alphabetic -> 26 primes in order
          -> Numeric    -> 10 primes in order
```

Let **D** = `{abcdefghijklmnopqrstuvwxyz0123456789} `

****note: order matters dispite this notation.****

`U: D -> P`

where input *d* is the *ith* charactor of a UA starting from the left, and **P** is defined as above. 

We have:

```markdown
a = 2 
b = 3 
c = 5 
d = 7
e = 11
f = 13
g = 17
h = 19
i = 23
j = 29
k = 31
l = 37
m = 41
n = 43
o = 47
p = 53
q = 59
r = 61
s = 67
t = 71
u = 73
v = 79
w = 83
x = 89
y = 97
z = 101
0 = 103
1 = 107
2 = 113
3 = 127
4 = 131
5 = 137
6 = 139
7 = 149
8 = 151
9 = 157
```
---

Let the following Map **V** (visualizer) be defined:

**V**: `{UA} -> Z`

Using the digit mapper **U** above where **P** is as defined above 

**V(U)** -> **Z**

Example:

Given the known visualizer **V** with the following UA:

`u = u1zhgy24tweexhjcsstya5qqzrus4cgv0amasfv5jp6f3p3qvw265rugn8ref5djg472l5s382mwuffremffr7se6xjlh5exagwg2d6frs`

we have,

**V**(u) =

```markdown
i = 0  , u = 73
i = 1  , 1 = 107
i = 2  , z = 101
i = 3  , h = 19
.
.
.
i = 105, s = 67
```

<img width="562" height="556" alt="Screenshot_2026-01-03_18-03-03" src="https://github.com/user-attachments/assets/f209dc2d-1115-45d5-8014-8d758e170778" />




Once **V** is applied, graphing on the x-y plane with gnuplot where x = i, and y = p yields a unqiue function that can be visually id'd.

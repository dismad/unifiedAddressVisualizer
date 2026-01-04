# unifiedAddressVisualizer
UA "randomart" idea that almost feels like a digital stamp. 

---

## Idea
Let the following "Primes in order" map be defined:

**P** = `{2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157}`

---
Let the following map **U** ( digit mapper ) be defined:

```markdown
UA digits -> Alphabetic -> 26 primes in order
          -> Numeric    -> 10 primes in order
```

Let **D** = `{abcdefghijklmnopqrstuvwxyz0123456789} `

****note: order matters despite this notation.****

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



## Installation

Install gnuplut,

```bash
sudo apt install gnuplot
sudo chmod +x uaVisualizer.sh graphMe.sh
```

## Running

`./uaVisualizer.sh <your ua>`

For a debug mode that outputs a nice JSON, add debug

`./uaVisualizer.sh <your ua> debug`

```json
[
  {
    "UA": "u1zhgy24tweexhjcsstya5qqzrus4cgv0amasfv5jp6f3p3qvw265rugn8ref5djg472l5s382mwuffremffr7se6xjlh5exagwg2d6frs",
    "Coordinates": [
      {
        "x": 0,
        "y": 73
      },
      {
        "x": 1,
        "y": 107
      },
      {
        "x": 2,
        "y": 101
      },
      {
        "x": 3,
        "y": 19
      },
      {
        "x": 4,
        "y": 17
      },
      {
        "x": 5,
        "y": 97
      },
      {
        "x": 6,
        "y": 109
      },
      {
        "x": 7,
        "y": 127
      },
      {
        "x": 8,
        "y": 71
      },
      {
        "x": 9,
        "y": 83
      },
      {
        "x": 10,
        "y": 11
      },
      {
        "x": 11,
        "y": 11
      },
      {
        "x": 12,
        "y": 89
      },
      {
        "x": 13,
        "y": 19
      },
      {
        "x": 14,
        "y": 29
      },
      {
        "x": 15,
        "y": 5
      },
      {
        "x": 16,
        "y": 67
      },
      {
        "x": 17,
        "y": 67
      },
      {
        "x": 18,
        "y": 71
      },
      {
        "x": 19,
        "y": 97
      },
      {
        "x": 20,
        "y": 2
      },
      {
        "x": 21,
        "y": 137
      },
      {
        "x": 22,
        "y": 59
      },
      {
        "x": 23,
        "y": 59
      },
      {
        "x": 24,
        "y": 101
      },
      {
        "x": 25,
        "y": 61
      },
      {
        "x": 26,
        "y": 73
      },
      {
        "x": 27,
        "y": 67
      },
      {
        "x": 28,
        "y": 127
      },
      {
        "x": 29,
        "y": 5
      },
      {
        "x": 30,
        "y": 17
      },
      {
        "x": 31,
        "y": 79
      },
      {
        "x": 32,
        "y": 103
      },
      {
        "x": 33,
        "y": 2
      },
      {
        "x": 34,
        "y": 41
      },
      {
        "x": 35,
        "y": 2
      },
      {
        "x": 36,
        "y": 67
      },
      {
        "x": 37,
        "y": 13
      },
      {
        "x": 38,
        "y": 79
      },
      {
        "x": 39,
        "y": 137
      },
      {
        "x": 40,
        "y": 29
      },
      {
        "x": 41,
        "y": 53
      },
      {
        "x": 42,
        "y": 137
      },
      {
        "x": 43,
        "y": 13
      },
      {
        "x": 44,
        "y": 113
      },
      {
        "x": 45,
        "y": 53
      },
      {
        "x": 46,
        "y": 113
      },
      {
        "x": 47,
        "y": 59
      },
      {
        "x": 48,
        "y": 79
      },
      {
        "x": 49,
        "y": 83
      },
      {
        "x": 50,
        "y": 109
      },
      {
        "x": 51,
        "y": 137
      },
      {
        "x": 52,
        "y": 137
      },
      {
        "x": 53,
        "y": 61
      },
      {
        "x": 54,
        "y": 73
      },
      {
        "x": 55,
        "y": 17
      },
      {
        "x": 56,
        "y": 43
      },
      {
        "x": 57,
        "y": 149
      },
      {
        "x": 58,
        "y": 61
      },
      {
        "x": 59,
        "y": 11
      },
      {
        "x": 60,
        "y": 13
      },
      {
        "x": 61,
        "y": 137
      },
      {
        "x": 62,
        "y": 7
      },
      {
        "x": 63,
        "y": 29
      },
      {
        "x": 64,
        "y": 17
      },
      {
        "x": 65,
        "y": 127
      },
      {
        "x": 66,
        "y": 139
      },
      {
        "x": 67,
        "y": 109
      },
      {
        "x": 68,
        "y": 37
      },
      {
        "x": 69,
        "y": 137
      },
      {
        "x": 70,
        "y": 67
      },
      {
        "x": 71,
        "y": 113
      },
      {
        "x": 72,
        "y": 149
      },
      {
        "x": 73,
        "y": 109
      },
      {
        "x": 74,
        "y": 41
      },
      {
        "x": 75,
        "y": 83
      },
      {
        "x": 76,
        "y": 73
      },
      {
        "x": 77,
        "y": 13
      },
      {
        "x": 78,
        "y": 13
      },
      {
        "x": 79,
        "y": 61
      },
      {
        "x": 80,
        "y": 11
      },
      {
        "x": 81,
        "y": 41
      },
      {
        "x": 82,
        "y": 13
      },
      {
        "x": 83,
        "y": 13
      },
      {
        "x": 84,
        "y": 61
      },
      {
        "x": 85,
        "y": 139
      },
      {
        "x": 86,
        "y": 67
      },
      {
        "x": 87,
        "y": 11
      },
      {
        "x": 88,
        "y": 137
      },
      {
        "x": 89,
        "y": 89
      },
      {
        "x": 90,
        "y": 29
      },
      {
        "x": 91,
        "y": 37
      },
      {
        "x": 92,
        "y": 19
      },
      {
        "x": 93,
        "y": 137
      },
      {
        "x": 94,
        "y": 11
      },
      {
        "x": 95,
        "y": 89
      },
      {
        "x": 96,
        "y": 2
      },
      {
        "x": 97,
        "y": 17
      },
      {
        "x": 98,
        "y": 83
      },
      {
        "x": 99,
        "y": 17
      },
      {
        "x": 100,
        "y": 109
      },
      {
        "x": 101,
        "y": 7
      },
      {
        "x": 102,
        "y": 137
      },
      {
        "x": 103,
        "y": 13
      },
      {
        "x": 104,
        "y": 61
      },
      {
        "x": 105,
        "y": 67
      }
    ]
  }
]
```

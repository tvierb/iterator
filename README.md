# iterator

Usage:
    ./iterator.pl -w IkeaTL:8.73 -w LochTL:9 -w MiniTL:6.1 -w IkeaEL:25 -w LochEL:23.25 --precision 1 --length 3

Idea:

The idea ist to measure a specific needed weight of salt, sugar oder yeast by only using spoons.
OK some people use blasphemic witchcrafted devices that display a number but not me!

In my case, I shovelled up to 100g with five differnent spoons to calculate each capacity.

With this program here I now can calculate how to get to more weights:

     0.3 = IkeaTL + LochTL
     1.8 = LochEL + IkeaEL
     2.6 = MiniTL + IkeaTL
     2.9 = MiniTL + LochTL
     3.2 = LochTL + MiniTL + MiniTL
     3.5 = IkeaTL + MiniTL + MiniTL
     4.4 = IkeaEL + LochEL + MiniTL
     5.3 = LochTL - LochTL + LochEL
     5.5 = LochTL - IkeaTL + LochEL
     5.8 = LochTL + MiniTL + IkeaTL
     6.1 = MiniTL
     6.4 = IkeaTL + MiniTL + LochTL
     7 = IkeaEL + LochEL + IkeaTL
     7.3 = IkeaEL + LochEL + LochTL
     7.5 = IkeaTL - IkeaTL + IkeaEL
     7.9 = LochEL + IkeaEL + MiniTL
     8.2 = MiniTL - LochTL + LochEL
     8.4 = MiniTL - IkeaTL + LochEL
     8.5 = LochTL + IkeaTL + IkeaTL
     8.7 = IkeaTL
     9 = LochTL
     9.3 = IkeaTL + LochTL + LochTL
     9.9 = MiniTL - LochTL + IkeaEL
     10.2 = MiniTL - IkeaTL + IkeaEL
     10.5 = LochEL + IkeaEL + IkeaTL
     10.8 = LochEL + IkeaEL + LochTL
     11.1 = MiniTL - MiniTL + LochEL
     11.4 = MiniTL + IkeaTL + IkeaTL
     11.6 = MiniTL + LochTL + IkeaTL
     11.9 = MiniTL + LochTL + LochTL
     12.2 = MiniTL + MiniTL
     12.8 = MiniTL - MiniTL + IkeaEL
     14.3 = LochTL + LochEL
     14.5 = IkeaTL + LochEL
     14.8 = MiniTL + IkeaTL
     15.1 = MiniTL + LochTL
     16 = LochTL + IkeaEL
     16.3 = IkeaTL + IkeaEL
     17.2 = MiniTL + LochEL
     17.5 = IkeaTL + IkeaTL
     17.7 = LochTL + IkeaTL
     18 = LochTL + LochTL
     18.3 = MiniTL + MiniTL + MiniTL
     18.9 = MiniTL + IkeaEL
     20.4 = LochTL + LochEL + MiniTL
     20.6 = IkeaTL + LochEL + MiniTL
     20.9 = MiniTL + MiniTL + IkeaTL
     21.2 = MiniTL + MiniTL + LochTL
     21.5 = IkeaEL + LochEL + LochEL
     22.1 = LochTL + IkeaEL + MiniTL
     22.4 = IkeaTL + IkeaEL + MiniTL
     23 = LochTL + LochEL + IkeaTL
     23.3 = LochEL
     23.5 = IkeaTL + LochEL + LochTL
     23.6 = MiniTL + IkeaTL + IkeaTL
     23.8 = MiniTL + LochTL + IkeaTL
     24.1 = MiniTL + LochTL + LochTL
     24.7 = LochTL + IkeaEL + IkeaTL
     25 = IkeaEL
     25.3 = IkeaTL + IkeaEL + LochTL
     25.9 = MiniTL + LochEL + IkeaTL
     26.2 = IkeaTL + IkeaTL + IkeaTL
     26.5 = LochTL + IkeaTL + IkeaTL
     26.7 = LochTL + LochTL + IkeaTL
     26.8 = LochEL + IkeaEL + IkeaEL
     27 = LochTL + LochTL + LochTL
     27.6 = MiniTL + IkeaEL + IkeaTL
     27.9 = MiniTL + IkeaEL + LochTL
     29.4 = LochEL + MiniTL
     31.1 = IkeaEL + MiniTL
     32 = LochEL + IkeaTL
     32.3 = LochEL + LochTL
     33.7 = IkeaEL + IkeaTL
     34 = IkeaEL + LochTL
     35.5 = LochEL + MiniTL + MiniTL
     37.2 = IkeaEL + MiniTL + MiniTL
     37.5 = LochTL + LochEL + LochEL
     37.8 = IkeaTL + LochEL + LochEL
     38.1 = LochEL + MiniTL + IkeaTL
     38.4 = LochEL + MiniTL + LochTL
     39.3 = LochTL + LochEL + IkeaEL
     39.5 = IkeaTL + LochEL + IkeaEL
     39.8 = IkeaEL + MiniTL + IkeaTL
     40.1 = IkeaEL + MiniTL + LochTL
     40.4 = MiniTL + LochEL + LochEL
     40.7 = LochEL + IkeaTL + IkeaTL
     41 = LochEL + LochTL + IkeaTL
     41.3 = LochEL + LochTL + LochTL
     42.2 = MiniTL + LochEL + IkeaEL
     42.5 = IkeaEL + IkeaTL + IkeaTL
     42.7 = IkeaEL + LochTL + IkeaTL
     43 = IkeaEL + LochTL + LochTL
     43.9 = MiniTL + IkeaEL + IkeaEL
     46.5 = LochEL + LochEL
     48.3 = LochEL + IkeaEL
     50 = IkeaEL + IkeaEL
     52.6 = LochEL + LochEL + MiniTL
     54.4 = LochEL + IkeaEL + MiniTL
     55.2 = LochEL + LochEL + IkeaTL
     55.5 = LochEL + LochEL + LochTL
     56.1 = IkeaEL + IkeaEL + MiniTL
     57 = LochEL + IkeaEL + IkeaTL
     57.3 = LochEL + IkeaEL + LochTL
     58.7 = IkeaEL + IkeaEL + IkeaTL
     59 = IkeaEL + IkeaEL + LochTL
     69.8 = LochEL + LochEL + LochEL
     71.5 = LochEL + LochEL + IkeaEL
     73.3 = LochEL + IkeaEL + IkeaEL
     75 = IkeaEL + IkeaEL + IkeaEL

# iterator

Usage:
    ./iterator.pl -w IkeaTL:8.73 -w LochTL:9 -w MiniTL:6.1 -w IkeaEL:25 -w LochEL:23.25 --precision 2 --length 4 --name Salz

The idea:

The idea ist to measure a specific needed weight of salt, sugar oder yeast by only using spoons.
OK some people use blasphemic witchcrafted devices that display a number but not me!

In my case, I shovelled up to 100g with five different spoons to calculate each capacity.

With this program here I now can calculate how to get to more weights.

In normal operation mode it prints the table of all possible weight combinations.
Now there's "--search <weight>" to search and display only the solution for a specific weight.

## Search for how to get 34.6g of salt

    ./iterator.pl -w IkeaTL:8.73 -w LochTL:9 -w MiniTL:6.1 -w IkeaEL:25 -w LochEL:23.25 --precision 2 --length 3 --name Salt --search 34.6
    Kleingewichte von Salt abmessen:
    Bester Treffer fuer Suche nach 34.6 mit max. 3 Behaeltern:

    34 = IkeaEL + LochTL

There'a a better result with four spoons:

    ./iterator.pl -w IkeaTL:8.73 -w LochTL:9 -w MiniTL:6.1 -w IkeaEL:25 -w LochEL:23.25 --precision 2 --length 4 --name Salt --search 34.6
    Kleingewichte von Salt abmessen:
    Bester Treffer fuer Suche nach 34.6 mit max. 4 Behaeltern:

    34.61 = LochEL - MiniTL + IkeaTL + IkeaTL


## table output with max 4 spoons for salt

(Three spoons should be sufficient for most weights)

Kleingewichte von Salz abmessen:

     0.27 = LochTL - IkeaTL
     0.31 = MiniTL + IkeaTL + IkeaTL - LochEL
     0.54 = LochTL - IkeaTL + LochTL - IkeaTL
     0.58 = MiniTL + LochTL + IkeaTL - LochEL
     0.85 = MiniTL + LochTL + LochTL - LochEL
     0.88 = LochEL + IkeaTL - IkeaEL - MiniTL
     0.9 = IkeaEL - MiniTL - LochTL - LochTL
     1.15 = LochEL + LochTL - IkeaEL - MiniTL
     1.17 = IkeaEL - MiniTL - LochTL - IkeaTL
     1.19 = IkeaTL + IkeaTL + IkeaTL - IkeaEL
     1.44 = IkeaEL - MiniTL - IkeaTL - IkeaTL
     1.46 = LochTL + IkeaTL + IkeaTL - IkeaEL
     1.48 = IkeaEL - LochEL + IkeaTL - LochTL
     1.73 = LochTL + LochTL + IkeaTL - IkeaEL
     1.75 = IkeaEL - LochEL
     2 = LochTL + LochTL + LochTL - IkeaEL
     2.02 = IkeaEL - LochEL + LochTL - IkeaTL
     2.05 = LochEL - MiniTL - MiniTL - LochTL
     2.32 = LochEL - MiniTL - MiniTL - IkeaTL
     2.36 = IkeaTL - MiniTL + IkeaTL - LochTL
     2.63 = IkeaTL - MiniTL
     2.9 = LochTL - MiniTL
     2.94 = IkeaTL + IkeaTL + IkeaTL - LochEL
     3.17 = LochTL - MiniTL + LochTL - IkeaTL
     3.2 = MiniTL + MiniTL - LochTL
     3.21 = LochTL + IkeaTL + IkeaTL - LochEL
     3.47 = MiniTL + MiniTL - IkeaTL
     3.48 = LochTL + LochTL + IkeaTL - LochEL
     3.5 = IkeaEL - LochEL + IkeaEL - LochEL
     3.75 = LochTL + LochTL + LochTL - LochEL
     3.8 = IkeaEL - MiniTL - MiniTL - LochTL
     4.07 = IkeaEL - MiniTL - MiniTL - IkeaTL
     4.35 = LochEL + MiniTL - IkeaEL
     4.38 = IkeaEL - LochEL + IkeaTL - MiniTL
     4.65 = IkeaEL - LochEL + LochTL - MiniTL
     4.95 = LochEL - MiniTL - MiniTL - MiniTL
     5.25 = LochEL - LochTL - LochTL
     5.26 = IkeaTL - MiniTL + IkeaTL - MiniTL
     5.52 = LochEL - LochTL - IkeaTL
     5.53 = LochTL - MiniTL + IkeaTL - MiniTL
     5.79 = LochEL - IkeaTL - IkeaTL
     5.8 = LochTL - MiniTL + LochTL - MiniTL
     5.83 = MiniTL + IkeaTL - LochTL
     6.1 = MiniTL
     6.37 = LochTL - IkeaTL + MiniTL
     6.7 = IkeaEL - MiniTL - MiniTL - MiniTL
     6.98 = LochEL + IkeaTL - IkeaEL
     7 = IkeaEL - LochTL - LochTL
     7.25 = LochEL + LochTL - IkeaEL
     7.27 = IkeaEL - LochTL - IkeaTL
     7.54 = IkeaEL - IkeaTL - IkeaTL
     7.85 = IkeaEL - LochEL + MiniTL
     8.15 = LochEL - MiniTL - LochTL
     8.42 = LochEL - MiniTL - IkeaTL
     8.46 = IkeaTL + IkeaTL - LochTL
     8.73 = IkeaTL
     9 = LochTL
     9.27 = LochTL - IkeaTL + LochTL
     9.3 = MiniTL + MiniTL - LochTL + MiniTL
     9.57 = MiniTL + MiniTL - IkeaTL + MiniTL
     9.9 = IkeaEL - MiniTL - LochTL
     10.17 = IkeaEL - MiniTL - IkeaTL
     10.45 = LochEL + MiniTL - IkeaEL + MiniTL
     10.48 = IkeaEL - LochEL + IkeaTL
     10.75 = IkeaEL - LochEL + LochTL
     11.05 = LochEL - MiniTL - MiniTL
     11.35 = LochEL - LochTL - LochTL + MiniTL
     11.36 = IkeaTL - MiniTL + IkeaTL
     11.62 = LochEL - LochTL - IkeaTL + MiniTL
     11.63 = LochTL - MiniTL + IkeaTL
     11.89 = LochEL - IkeaTL - IkeaTL + MiniTL
     11.9 = LochTL - MiniTL + LochTL
     11.93 = MiniTL + MiniTL - LochTL + IkeaTL
     12.2 = MiniTL + MiniTL
     12.47 = MiniTL + MiniTL - IkeaTL + LochTL
     12.5 = LochEL + LochEL - IkeaEL - LochTL
     12.77 = LochEL + LochEL - IkeaEL - IkeaTL
     12.8 = IkeaEL - MiniTL - MiniTL
     13.08 = LochEL + MiniTL - IkeaEL + IkeaTL
     13.1 = IkeaEL - LochTL - LochTL + MiniTL
     13.35 = LochEL + MiniTL - IkeaEL + LochTL
     13.37 = IkeaEL - LochTL - IkeaTL + MiniTL
     13.64 = IkeaEL - IkeaTL - IkeaTL + MiniTL
     13.95 = IkeaEL - LochEL + MiniTL + MiniTL
     13.98 = LochEL - LochTL - LochTL + IkeaTL
     14.25 = LochEL - LochTL
     14.52 = LochEL - IkeaTL
     14.56 = MiniTL + IkeaTL - LochTL + IkeaTL
     14.79 = LochEL - IkeaTL - IkeaTL + LochTL
     14.83 = MiniTL + IkeaTL
     15.1 = MiniTL + LochTL
     15.37 = LochTL - IkeaTL + MiniTL + LochTL
     15.4 = LochEL + LochEL - IkeaEL - MiniTL
     15.71 = LochEL + IkeaTL - IkeaEL + IkeaTL
     15.73 = IkeaEL - LochTL - LochTL + IkeaTL
     15.98 = LochEL + LochTL - IkeaEL + IkeaTL
     16 = IkeaEL - LochTL
     16.25 = LochEL + LochTL - IkeaEL + LochTL
     16.27 = IkeaEL - IkeaTL
     16.54 = IkeaEL - IkeaTL - IkeaTL + LochTL
     16.58 = IkeaEL - LochEL + MiniTL + IkeaTL
     16.85 = IkeaEL - LochEL + MiniTL + LochTL
     16.88 = LochEL - MiniTL - LochTL + IkeaTL
     17.15 = LochEL - MiniTL
     17.19 = IkeaTL + IkeaTL - LochTL + IkeaTL
     17.42 = LochEL - MiniTL - IkeaTL + LochTL
     17.46 = IkeaTL + IkeaTL
     17.73 = LochTL + IkeaTL
     17.75 = IkeaEL - LochEL + IkeaEL - LochTL
     18 = LochTL + LochTL
     18.02 = IkeaEL - LochEL + IkeaEL - IkeaTL
     18.27 = LochTL - IkeaTL + LochTL + LochTL
     18.3 = MiniTL + MiniTL + MiniTL
     18.63 = IkeaEL - MiniTL - LochTL + IkeaTL
     18.9 = IkeaEL - MiniTL
     19.17 = IkeaEL - MiniTL - IkeaTL + LochTL
     19.21 = IkeaEL - LochEL + IkeaTL + IkeaTL
     19.48 = IkeaEL - LochEL + LochTL + IkeaTL
     19.75 = IkeaEL - LochEL + LochTL + LochTL
     19.78 = LochEL - MiniTL - MiniTL + IkeaTL
     20.05 = LochEL - MiniTL - MiniTL + LochTL
     20.09 = IkeaTL - MiniTL + IkeaTL + IkeaTL
     20.35 = LochEL - LochTL + MiniTL
     20.36 = LochTL - MiniTL + IkeaTL + IkeaTL
     20.62 = LochEL - IkeaTL + MiniTL
     20.63 = LochTL - MiniTL + LochTL + IkeaTL
     20.65 = IkeaEL - LochEL + IkeaEL - MiniTL
     20.9 = LochTL - MiniTL + LochTL + LochTL
     20.93 = MiniTL + MiniTL + IkeaTL
     21.2 = MiniTL + MiniTL + LochTL
     21.5 = LochEL + LochEL - IkeaEL
     21.53 = IkeaEL - MiniTL - MiniTL + IkeaTL
     21.8 = IkeaEL - MiniTL - MiniTL + LochTL
     22.1 = IkeaEL - LochTL + MiniTL
     22.37 = IkeaEL - IkeaTL + MiniTL
     22.98 = LochEL - LochTL + IkeaTL
     23.25 = LochEL
     23.52 = LochEL - IkeaTL + LochTL
     23.56 = MiniTL + IkeaTL + IkeaTL
     23.83 = MiniTL + LochTL + IkeaTL
     24.1 = MiniTL + LochTL + LochTL
     24.4 = MiniTL + MiniTL + MiniTL + MiniTL
     24.73 = IkeaEL - LochTL + IkeaTL
     25 = IkeaEL
     25.27 = IkeaEL - IkeaTL + LochTL
     25.88 = LochEL - MiniTL + IkeaTL
     26.15 = LochEL - MiniTL + LochTL
     26.19 = IkeaTL + IkeaTL + IkeaTL
     26.45 = LochEL - LochTL + MiniTL + MiniTL
     26.46 = LochTL + IkeaTL + IkeaTL
     26.72 = LochEL - IkeaTL + MiniTL + MiniTL
     26.73 = LochTL + LochTL + IkeaTL
     26.75 = IkeaEL - LochEL + IkeaEL
     27 = LochTL + LochTL + LochTL
     27.03 = MiniTL + MiniTL + MiniTL + IkeaTL
     27.3 = MiniTL + MiniTL + MiniTL + LochTL
     27.6 = LochEL + LochEL - IkeaEL + MiniTL
     27.63 = IkeaEL - MiniTL + IkeaTL
     27.9 = IkeaEL - MiniTL + LochTL
     28.2 = IkeaEL - LochTL + MiniTL + MiniTL
     28.47 = IkeaEL - IkeaTL + MiniTL + MiniTL
     28.5 = LochEL - LochTL - LochTL + LochEL
     28.77 = LochEL - LochTL - IkeaTL + LochEL
     29.04 = LochEL - IkeaTL - IkeaTL + LochEL
     29.08 = LochEL - LochTL + MiniTL + IkeaTL
     29.35 = LochEL + MiniTL
     29.62 = LochEL - IkeaTL + MiniTL + LochTL
     29.66 = MiniTL + MiniTL + IkeaTL + IkeaTL
     29.93 = MiniTL + MiniTL + LochTL + IkeaTL
     30.2 = MiniTL + MiniTL + LochTL + LochTL
     30.23 = LochEL + LochEL - IkeaEL + IkeaTL
     30.25 = LochEL - LochTL - LochTL + IkeaEL
     30.5 = LochEL + LochEL - IkeaEL + LochTL
     30.52 = LochEL - LochTL - IkeaTL + IkeaEL
     30.79 = LochEL - IkeaTL - IkeaTL + IkeaEL
     30.83 = IkeaEL - LochTL + MiniTL + IkeaTL
     31.1 = IkeaEL + MiniTL
     31.37 = IkeaEL - IkeaTL + MiniTL + LochTL
     31.4 = LochEL - MiniTL - LochTL + LochEL
     31.67 = LochEL - MiniTL - IkeaTL + LochEL
     31.71 = LochEL - LochTL + IkeaTL + IkeaTL
     31.98 = LochEL + IkeaTL
     32 = IkeaEL - LochTL - LochTL + IkeaEL
     32.25 = LochEL + LochTL
     32.27 = IkeaEL - LochTL - IkeaTL + IkeaEL
     32.29 = MiniTL + IkeaTL + IkeaTL + IkeaTL
     32.52 = LochEL - IkeaTL + LochTL + LochTL
     32.54 = IkeaEL - IkeaTL - IkeaTL + IkeaEL
     32.56 = MiniTL + LochTL + IkeaTL + IkeaTL
     32.83 = MiniTL + LochTL + LochTL + IkeaTL
     32.85 = IkeaEL - LochEL + IkeaEL + MiniTL
     33.1 = MiniTL + LochTL + LochTL + LochTL
     33.15 = LochEL - MiniTL - LochTL + IkeaEL
     33.42 = LochEL - MiniTL - IkeaTL + IkeaEL
     33.46 = IkeaEL - LochTL + IkeaTL + IkeaTL
     33.73 = IkeaEL + IkeaTL
     34 = IkeaEL + LochTL
     34.27 = IkeaEL - IkeaTL + LochTL + LochTL
     34.3 = LochEL - MiniTL - MiniTL + LochEL
     34.61 = LochEL - MiniTL + IkeaTL + IkeaTL
     34.88 = LochEL - MiniTL + LochTL + IkeaTL
     34.9 = IkeaEL - MiniTL - LochTL + IkeaEL
     34.92 = IkeaTL + IkeaTL + IkeaTL + IkeaTL
     35.15 = LochEL - MiniTL + LochTL + LochTL
     35.17 = IkeaEL - MiniTL - IkeaTL + IkeaEL
     35.19 = LochTL + IkeaTL + IkeaTL + IkeaTL
     35.45 = LochEL + MiniTL + MiniTL
     35.46 = LochTL + LochTL + IkeaTL + IkeaTL
     35.48 = IkeaEL - LochEL + IkeaEL + IkeaTL
     35.73 = LochTL + LochTL + LochTL + IkeaTL
     35.75 = IkeaEL - LochEL + IkeaEL + LochTL
     36 = LochTL + LochTL + LochTL + LochTL
     36.05 = LochEL - MiniTL - MiniTL + IkeaEL
     36.36 = IkeaEL - MiniTL + IkeaTL + IkeaTL
     36.63 = IkeaEL - MiniTL + LochTL + IkeaTL
     36.9 = IkeaEL - MiniTL + LochTL + LochTL
     37.2 = IkeaEL + MiniTL + MiniTL
     37.5 = LochEL - LochTL + LochEL
     37.77 = LochEL - IkeaTL + LochEL
     37.8 = IkeaEL - MiniTL - MiniTL + IkeaEL
     38.08 = LochEL + MiniTL + IkeaTL
     38.35 = LochEL + MiniTL + LochTL
     39.25 = LochEL - LochTL + IkeaEL
     39.52 = LochEL - IkeaTL + IkeaEL
     39.83 = IkeaEL + MiniTL + IkeaTL
     40.1 = IkeaEL + MiniTL + LochTL
     40.4 = LochEL - MiniTL + LochEL
     40.71 = LochEL + IkeaTL + IkeaTL
     40.98 = LochEL + LochTL + IkeaTL
     41 = IkeaEL - LochTL + IkeaEL
     41.25 = LochEL + LochTL + LochTL
     41.27 = IkeaEL - IkeaTL + IkeaEL
     41.55 = LochEL + MiniTL + MiniTL + MiniTL
     42.15 = LochEL - MiniTL + IkeaEL
     42.46 = IkeaEL + IkeaTL + IkeaTL
     42.73 = IkeaEL + LochTL + IkeaTL
     43 = IkeaEL + LochTL + LochTL
     43.3 = IkeaEL + MiniTL + MiniTL + MiniTL
     43.6 = LochEL - LochTL + LochEL + MiniTL
     43.87 = LochEL - IkeaTL + LochEL + MiniTL
     43.9 = IkeaEL - MiniTL + IkeaEL
     44.18 = LochEL + MiniTL + MiniTL + IkeaTL
     44.45 = LochEL + MiniTL + MiniTL + LochTL
     44.75 = LochEL + LochEL - IkeaEL + LochEL
     45.35 = LochEL - LochTL + IkeaEL + MiniTL
     45.62 = LochEL - IkeaTL + IkeaEL + MiniTL
     45.93 = IkeaEL + MiniTL + MiniTL + IkeaTL
     46.2 = IkeaEL + MiniTL + MiniTL + LochTL
     46.23 = LochEL - LochTL + LochEL + IkeaTL
     46.5 = LochEL + LochEL
     46.77 = LochEL - IkeaTL + LochEL + LochTL
     46.81 = LochEL + MiniTL + IkeaTL + IkeaTL
     47.08 = LochEL + MiniTL + LochTL + IkeaTL
     47.1 = IkeaEL - LochTL + IkeaEL + MiniTL
     47.35 = LochEL + MiniTL + LochTL + LochTL
     47.37 = IkeaEL - IkeaTL + IkeaEL + MiniTL
     47.98 = LochEL - LochTL + IkeaEL + IkeaTL
     48.25 = LochEL + IkeaEL
     48.52 = LochEL - IkeaTL + IkeaEL + LochTL
     48.56 = IkeaEL + MiniTL + IkeaTL + IkeaTL
     48.83 = IkeaEL + MiniTL + LochTL + IkeaTL
     49.1 = IkeaEL + MiniTL + LochTL + LochTL
     49.13 = LochEL - MiniTL + LochEL + IkeaTL
     49.4 = LochEL - MiniTL + LochEL + LochTL
     49.44 = LochEL + IkeaTL + IkeaTL + IkeaTL
     49.71 = LochEL + LochTL + IkeaTL + IkeaTL
     49.73 = IkeaEL - LochTL + IkeaEL + IkeaTL
     49.98 = LochEL + LochTL + LochTL + IkeaTL
     50 = IkeaEL + IkeaEL
     50.25 = LochEL + LochTL + LochTL + LochTL
     50.27 = IkeaEL - IkeaTL + IkeaEL + LochTL
     50.88 = LochEL - MiniTL + IkeaEL + IkeaTL
     51.15 = LochEL - MiniTL + IkeaEL + LochTL
     51.19 = IkeaEL + IkeaTL + IkeaTL + IkeaTL
     51.46 = IkeaEL + LochTL + IkeaTL + IkeaTL
     51.73 = IkeaEL + LochTL + LochTL + IkeaTL
     51.75 = IkeaEL - LochEL + IkeaEL + IkeaEL
     52 = IkeaEL + LochTL + LochTL + LochTL
     52.6 = LochEL + LochEL + MiniTL
     52.63 = IkeaEL - MiniTL + IkeaEL + IkeaTL
     52.9 = IkeaEL - MiniTL + IkeaEL + LochTL
     54.35 = LochEL + IkeaEL + MiniTL
     55.23 = LochEL + LochEL + IkeaTL
     55.5 = LochEL + LochEL + LochTL
     56.1 = IkeaEL + IkeaEL + MiniTL
     56.98 = LochEL + IkeaEL + IkeaTL
     57.25 = LochEL + IkeaEL + LochTL
     58.7 = LochEL + LochEL + MiniTL + MiniTL
     58.73 = IkeaEL + IkeaEL + IkeaTL
     59 = IkeaEL + IkeaEL + LochTL
     60.45 = LochEL + IkeaEL + MiniTL + MiniTL
     60.75 = LochEL - LochTL + LochEL + LochEL
     61.02 = LochEL - IkeaTL + LochEL + LochEL
     61.33 = LochEL + LochEL + MiniTL + IkeaTL
     61.6 = LochEL + LochEL + MiniTL + LochTL
     62.2 = IkeaEL + IkeaEL + MiniTL + MiniTL
     62.5 = LochEL - LochTL + LochEL + IkeaEL
     62.77 = LochEL - IkeaTL + LochEL + IkeaEL
     63.08 = LochEL + IkeaEL + MiniTL + IkeaTL
     63.35 = LochEL + IkeaEL + MiniTL + LochTL
     63.65 = LochEL - MiniTL + LochEL + LochEL
     63.96 = LochEL + LochEL + IkeaTL + IkeaTL
     64.23 = LochEL + LochEL + LochTL + IkeaTL
     64.25 = LochEL - LochTL + IkeaEL + IkeaEL
     64.5 = LochEL + LochEL + LochTL + LochTL
     64.52 = LochEL - IkeaTL + IkeaEL + IkeaEL
     64.83 = IkeaEL + IkeaEL + MiniTL + IkeaTL
     65.1 = IkeaEL + IkeaEL + MiniTL + LochTL
     65.4 = LochEL - MiniTL + LochEL + IkeaEL
     65.71 = LochEL + IkeaEL + IkeaTL + IkeaTL
     65.98 = LochEL + IkeaEL + LochTL + IkeaTL
     66 = IkeaEL - LochTL + IkeaEL + IkeaEL
     66.25 = LochEL + IkeaEL + LochTL + LochTL
     66.27 = IkeaEL - IkeaTL + IkeaEL + IkeaEL
     67.15 = LochEL - MiniTL + IkeaEL + IkeaEL
     67.46 = IkeaEL + IkeaEL + IkeaTL + IkeaTL
     67.73 = IkeaEL + IkeaEL + LochTL + IkeaTL
     68 = IkeaEL + IkeaEL + LochTL + LochTL
     68.9 = IkeaEL - MiniTL + IkeaEL + IkeaEL
     69.75 = LochEL + LochEL + LochEL
     71.5 = LochEL + LochEL + IkeaEL
     73.25 = LochEL + IkeaEL + IkeaEL
     75 = IkeaEL + IkeaEL + IkeaEL
     75.85 = LochEL + LochEL + LochEL + MiniTL
     77.6 = LochEL + LochEL + IkeaEL + MiniTL
     78.48 = LochEL + LochEL + LochEL + IkeaTL
     78.75 = LochEL + LochEL + LochEL + LochTL
     79.35 = LochEL + IkeaEL + IkeaEL + MiniTL
     80.23 = LochEL + LochEL + IkeaEL + IkeaTL
     80.5 = LochEL + LochEL + IkeaEL + LochTL
     81.1 = IkeaEL + IkeaEL + IkeaEL + MiniTL
     81.98 = LochEL + IkeaEL + IkeaEL + IkeaTL
     82.25 = LochEL + IkeaEL + IkeaEL + LochTL
     83.73 = IkeaEL + IkeaEL + IkeaEL + IkeaTL
     84 = IkeaEL + IkeaEL + IkeaEL + LochTL
     93 = LochEL + LochEL + LochEL + LochEL
     94.75 = LochEL + LochEL + LochEL + IkeaEL
     96.5 = LochEL + LochEL + IkeaEL + IkeaEL
     98.25 = LochEL + IkeaEL + IkeaEL + IkeaEL
     100 = IkeaEL + IkeaEL + IkeaEL + IkeaEL

Kompetisi Tahap I
================

## *The game is on\!*

Menggunakan *provided data* dari salah satu *marketplace*, kita akan
mencoba memilih produk apa saja yang perlu diberikan *budget* promosi
sehingga menghasilkan *profit* maksimal. Tentunya dengan *budget
constraint* tertentu.

## *Dataset*

Data kompetisi ini terdiri dari daftar beberapa produk yang memiliki
*price elasticity* baik.

<table>

<caption>

Contoh 10 data teratas

</caption>

<thead>

<tr>

<th style="text-align:left;">

product code

</th>

<th style="text-align:left;">

brand

</th>

<th style="text-align:left;">

original\_sales\_catalog

</th>

<th style="text-align:right;">

offer\_price\_today

</th>

<th style="text-align:right;">

first\_price

</th>

<th style="text-align:right;">

first\_order

</th>

<th style="text-align:right;">

first\_order\_3m

</th>

<th style="text-align:right;">

first\_gmv

</th>

<th style="text-align:right;">

first\_gmv\_3m

</th>

<th style="text-align:right;">

discount

</th>

<th style="text-align:right;">

second\_price

</th>

<th style="text-align:right;">

second\_order

</th>

<th style="text-align:right;">

second\_order\_3m

</th>

<th style="text-align:right;">

second\_gmv

</th>

<th style="text-align:right;">

second\_gmv\_3m

</th>

<th style="text-align:right;">

diff\_order

</th>

<th style="text-align:right;">

diff\_order\_3m

</th>

<th style="text-align:right;">

diff\_gmv

</th>

<th style="text-align:right;">

diff\_gmv\_3m

</th>

<th style="text-align:right;">

burn

</th>

<th style="text-align:right;">

burn\_3m

</th>

<th style="text-align:right;">

elasticity

</th>

<th style="text-align:left;">

discount\_bin

</th>

<th style="text-align:right;">

final\_price

</th>

<th style="text-align:right;">

reguler\_commission

</th>

<th style="text-align:right;">

first\_profit

</th>

<th style="text-align:right;">

second\_profit

</th>

<th style="text-align:right;">

increase\_profit

</th>

<th style="text-align:right;">

cost\_benefit

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

6000227-0001

</td>

<td style="text-align:left;">

Indomie

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

85000

</td>

<td style="text-align:right;">

85000

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

595000

</td>

<td style="text-align:right;">

1785000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

84150

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

27

</td>

<td style="text-align:right;">

757350

</td>

<td style="text-align:right;">

2272050

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

162350

</td>

<td style="text-align:right;">

487050

</td>

<td style="text-align:right;">

7650

</td>

<td style="text-align:right;">

22950

</td>

<td style="text-align:right;">

0.0023529

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

84150

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

53550

</td>

<td style="text-align:right;">

68161.50

</td>

<td style="text-align:right;">

14611.50

</td>

<td style="text-align:right;">

\-8338.50

</td>

</tr>

<tr>

<td style="text-align:left;">

6000094-0002

</td>

<td style="text-align:left;">

Cap Badak

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

4000

</td>

<td style="text-align:right;">

4000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

4000

</td>

<td style="text-align:right;">

12000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

3960

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

7920

</td>

<td style="text-align:right;">

23760

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

3920

</td>

<td style="text-align:right;">

11760

</td>

<td style="text-align:right;">

80

</td>

<td style="text-align:right;">

240

</td>

<td style="text-align:right;">

0.0250000

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

3960

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

360

</td>

<td style="text-align:right;">

712.80

</td>

<td style="text-align:right;">

352.80

</td>

<td style="text-align:right;">

112.80

</td>

</tr>

<tr>

<td style="text-align:left;">

6000100-0003

</td>

<td style="text-align:left;">

BLUE BAND

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

335000

</td>

<td style="text-align:right;">

335000

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

670000

</td>

<td style="text-align:right;">

2010000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

331650

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

2321550

</td>

<td style="text-align:right;">

6964650

</td>

<td style="text-align:right;">

5

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

1651550

</td>

<td style="text-align:right;">

4954650

</td>

<td style="text-align:right;">

23450

</td>

<td style="text-align:right;">

70350

</td>

<td style="text-align:right;">

0.0014925

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

331650

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

60300

</td>

<td style="text-align:right;">

208939.50

</td>

<td style="text-align:right;">

148639.50

</td>

<td style="text-align:right;">

78289.50

</td>

</tr>

<tr>

<td style="text-align:left;">

6000301-0004

</td>

<td style="text-align:left;">

2AA-Sembako

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

85000

</td>

<td style="text-align:right;">

85000

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

255000

</td>

<td style="text-align:right;">

765000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

84150

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

18

</td>

<td style="text-align:right;">

504900

</td>

<td style="text-align:right;">

1514700

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

249900

</td>

<td style="text-align:right;">

749700

</td>

<td style="text-align:right;">

5100

</td>

<td style="text-align:right;">

15300

</td>

<td style="text-align:right;">

0.0035294

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

84150

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

22950

</td>

<td style="text-align:right;">

45441.00

</td>

<td style="text-align:right;">

22491.00

</td>

<td style="text-align:right;">

7191.00

</td>

</tr>

<tr>

<td style="text-align:left;">

6000307-0005

</td>

<td style="text-align:left;">

2AA-Sembako

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

18000

</td>

<td style="text-align:right;">

18000

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

36000

</td>

<td style="text-align:right;">

108000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

17820

</td>

<td style="text-align:right;">

5

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

89100

</td>

<td style="text-align:right;">

267300

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

53100

</td>

<td style="text-align:right;">

159300

</td>

<td style="text-align:right;">

900

</td>

<td style="text-align:right;">

2700

</td>

<td style="text-align:right;">

0.0166667

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

17820

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

3240

</td>

<td style="text-align:right;">

8019.00

</td>

<td style="text-align:right;">

4779.00

</td>

<td style="text-align:right;">

2079.00

</td>

</tr>

<tr>

<td style="text-align:left;">

6000324-0006

</td>

<td style="text-align:left;">

YEO’S

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

110000

</td>

<td style="text-align:right;">

110000

</td>

<td style="text-align:right;">

5

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

550000

</td>

<td style="text-align:right;">

1650000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

108900

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

18

</td>

<td style="text-align:right;">

653400

</td>

<td style="text-align:right;">

1960200

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

103400

</td>

<td style="text-align:right;">

310200

</td>

<td style="text-align:right;">

6600

</td>

<td style="text-align:right;">

19800

</td>

<td style="text-align:right;">

0.0009091

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

108900

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

49500

</td>

<td style="text-align:right;">

58806.00

</td>

<td style="text-align:right;">

9306.00

</td>

<td style="text-align:right;">

\-10494.00

</td>

</tr>

<tr>

<td style="text-align:left;">

6000348-0007

</td>

<td style="text-align:left;">

YO GUAN HENG

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

29000

</td>

<td style="text-align:right;">

29000

</td>

<td style="text-align:right;">

17

</td>

<td style="text-align:right;">

51

</td>

<td style="text-align:right;">

493000

</td>

<td style="text-align:right;">

1479000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

28710

</td>

<td style="text-align:right;">

58

</td>

<td style="text-align:right;">

174

</td>

<td style="text-align:right;">

1665180

</td>

<td style="text-align:right;">

4995540

</td>

<td style="text-align:right;">

41

</td>

<td style="text-align:right;">

123

</td>

<td style="text-align:right;">

1172180

</td>

<td style="text-align:right;">

3516540

</td>

<td style="text-align:right;">

16820

</td>

<td style="text-align:right;">

50460

</td>

<td style="text-align:right;">

0.1413793

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

28710

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

44370

</td>

<td style="text-align:right;">

149866.20

</td>

<td style="text-align:right;">

105496.20

</td>

<td style="text-align:right;">

55036.20

</td>

</tr>

<tr>

<td style="text-align:left;">

6000370-0008

</td>

<td style="text-align:left;">

Wisjman

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

579000

</td>

<td style="text-align:right;">

579000

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

1158000

</td>

<td style="text-align:right;">

3474000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

573210

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

1719630

</td>

<td style="text-align:right;">

5158890

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

561630

</td>

<td style="text-align:right;">

1684890

</td>

<td style="text-align:right;">

17370

</td>

<td style="text-align:right;">

52110

</td>

<td style="text-align:right;">

0.0001727

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

573210

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

104220

</td>

<td style="text-align:right;">

154766.70

</td>

<td style="text-align:right;">

50546.70

</td>

<td style="text-align:right;">

\-1563.30

</td>

</tr>

<tr>

<td style="text-align:left;">

6000377-0009

</td>

<td style="text-align:left;">

Kara

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

90000

</td>

<td style="text-align:right;">

90000

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

630000

</td>

<td style="text-align:right;">

1890000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

89100

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

27

</td>

<td style="text-align:right;">

801900

</td>

<td style="text-align:right;">

2405700

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

171900

</td>

<td style="text-align:right;">

515700

</td>

<td style="text-align:right;">

8100

</td>

<td style="text-align:right;">

24300

</td>

<td style="text-align:right;">

0.0022222

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

89100

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

56700

</td>

<td style="text-align:right;">

72171.00

</td>

<td style="text-align:right;">

15471.00

</td>

<td style="text-align:right;">

\-8829.00

</td>

</tr>

<tr>

<td style="text-align:left;">

6000378-0010

</td>

<td style="text-align:left;">

Kara

</td>

<td style="text-align:left;">

Consumer Goods

</td>

<td style="text-align:right;">

9500

</td>

<td style="text-align:right;">

9500

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

6

</td>

<td style="text-align:right;">

19000

</td>

<td style="text-align:right;">

57000

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

9405

</td>

<td style="text-align:right;">

5

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

47025

</td>

<td style="text-align:right;">

141075

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

9

</td>

<td style="text-align:right;">

28025

</td>

<td style="text-align:right;">

84075

</td>

<td style="text-align:right;">

475

</td>

<td style="text-align:right;">

1425

</td>

<td style="text-align:right;">

0.0315789

</td>

<td style="text-align:left;">

a\_1%

</td>

<td style="text-align:right;">

9410

</td>

<td style="text-align:right;">

0.03

</td>

<td style="text-align:right;">

1710

</td>

<td style="text-align:right;">

4232.25

</td>

<td style="text-align:right;">

2522.25

</td>

<td style="text-align:right;">

1097.25

</td>

</tr>

</tbody>

</table>

## *Problem Statement*

Jika Anda memiliki *budget* promosi sebesar `Rp 200.000.000`, pilihlah
kombinasi produk terbaik yang menghasilkan *profit* terbesar.

*Budget* dihitung dari variabel `burn_3m` dan *profit* dihitung dari
variabel `cost_benefit`.

## *Submission*

Silakan submit jawaban kamu dengan format `.csv` berisi `1` kolom
kombinasi `product code`.

Contoh *file submission* ada di dalam folder ini.

Kirim file tersebut ke *link* [telegram berikut](https://t.me/Ikanx).
Jangan lupa sertakan nama tim kamu *yah*.

-----

# *LEADERBOARD*

*Update* per 26 Desember 2020:

| nama\_tim     | banyak\_produk |    profit |      cost |
| :------------ | -------------: | --------: | --------: |
| Pudja-an-Abil |           1597 | 205709826 | 199999997 |
| Tim AJA       |           1597 | 205709826 | 199999997 |
| Tim Medioker  |           1598 | 205709826 | 199999997 |
| Tim Untuk     |           1601 | 205709826 | 199999997 |
| Tim Supercupu |           1599 | 205709826 | 199999996 |

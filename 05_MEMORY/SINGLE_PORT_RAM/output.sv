xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
GENERATOR : Time = 20 din = 7 addr = 6 cs= 1 w_en = 1
DRIVER    : Time = 20 din = 7 addr = 6 cs= 1 w_en = 1
MONITOR   : Time = 20 din = 0 addr = 0 cs= 0 w_en = 0  dout = 0

====================================
         INVALID OPERATION
====================================
TIME  : 20
CS    : 0
W_EN  : 0
====================================
GENERATOR : Time = 40 din = 11 addr = 7 cs= 1 w_en = 0
DRIVER    : Time = 40 din = 11 addr = 7 cs= 1 w_en = 0
MONITOR   : Time = 40 din = 7 addr = 6 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 40
ADDR  : 6
DIN   : 7
====================================
GENERATOR : Time = 60 din = 5 addr = 4 cs= 0 w_en = 1
DRIVER    : Time = 60 din = 5 addr = 4 cs= 0 w_en = 1
MONITOR   : Time = 60 din = 11 addr = 7 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 60
ADDR           : 7
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 80 din = 1 addr = 5 cs= 0 w_en = 0
DRIVER    : Time = 80 din = 1 addr = 5 cs= 0 w_en = 0
MONITOR   : Time = 80 din = 5 addr = 4 cs= 0 w_en = 1  dout = 0

====================================
         INVALID OPERATION
====================================
TIME  : 80
CS    : 0
W_EN  : 1
====================================
GENERATOR : Time = 100 din = 0 addr = 6 cs= 1 w_en = 0
DRIVER    : Time = 100 din = 0 addr = 6 cs= 1 w_en = 0
MONITOR   : Time = 100 din = 1 addr = 5 cs= 0 w_en = 0  dout = 0

====================================
         INVALID OPERATION
====================================
TIME  : 100
CS    : 0
W_EN  : 0
====================================
GENERATOR : Time = 120 din = 8 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 120 din = 8 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 120 din = 0 addr = 6 cs= 1 w_en = 0  dout = 7

====================================
          READ OPERATION
====================================
TIME           : 120
ADDR           : 6
------------------------------------
EXPECTED DOUT  : 7
ACTUAL DOUT    : 7
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 140 din = 9 addr = 4 cs= 1 w_en = 1
DRIVER    : Time = 140 din = 9 addr = 4 cs= 1 w_en = 1
MONITOR   : Time = 140 din = 8 addr = 0 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 140
ADDR  : 0
DIN   : 8
====================================
GENERATOR : Time = 160 din = 5 addr = 7 cs= 1 w_en = 0
DRIVER    : Time = 160 din = 5 addr = 7 cs= 1 w_en = 0
MONITOR   : Time = 160 din = 9 addr = 4 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 160
ADDR  : 4
DIN   : 9
====================================
GENERATOR : Time = 180 din = 15 addr = 6 cs= 1 w_en = 0
DRIVER    : Time = 180 din = 15 addr = 6 cs= 1 w_en = 0
MONITOR   : Time = 180 din = 5 addr = 7 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 180
ADDR           : 7
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 200 din = 10 addr = 2 cs= 1 w_en = 1
DRIVER    : Time = 200 din = 10 addr = 2 cs= 1 w_en = 1
MONITOR   : Time = 200 din = 15 addr = 6 cs= 1 w_en = 0  dout = 7

====================================
          READ OPERATION
====================================
TIME           : 200
ADDR           : 6
------------------------------------
EXPECTED DOUT  : 7
ACTUAL DOUT    : 7
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 220 din = 5 addr = 7 cs= 0 w_en = 0
DRIVER    : Time = 220 din = 5 addr = 7 cs= 0 w_en = 0
MONITOR   : Time = 220 din = 10 addr = 2 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 220
ADDR  : 2
DIN   : 10
====================================
GENERATOR : Time = 240 din = 11 addr = 6 cs= 1 w_en = 0
DRIVER    : Time = 240 din = 11 addr = 6 cs= 1 w_en = 0
MONITOR   : Time = 240 din = 5 addr = 7 cs= 0 w_en = 0  dout = 7

====================================
         INVALID OPERATION
====================================
TIME  : 240
CS    : 0
W_EN  : 0
====================================
GENERATOR : Time = 260 din = 4 addr = 6 cs= 1 w_en = 1
DRIVER    : Time = 260 din = 4 addr = 6 cs= 1 w_en = 1
MONITOR   : Time = 260 din = 11 addr = 6 cs= 1 w_en = 0  dout = 7

====================================
          READ OPERATION
====================================
TIME           : 260
ADDR           : 6
------------------------------------
EXPECTED DOUT  : 7
ACTUAL DOUT    : 7
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 280 din = 13 addr = 7 cs= 0 w_en = 1
DRIVER    : Time = 280 din = 13 addr = 7 cs= 0 w_en = 1
MONITOR   : Time = 280 din = 4 addr = 6 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 280
ADDR  : 6
DIN   : 4
====================================
GENERATOR : Time = 300 din = 9 addr = 7 cs= 1 w_en = 1
DRIVER    : Time = 300 din = 9 addr = 7 cs= 1 w_en = 1
MONITOR   : Time = 300 din = 13 addr = 7 cs= 0 w_en = 1  dout = 7

====================================
         INVALID OPERATION
====================================
TIME  : 300
CS    : 0
W_EN  : 1
====================================
GENERATOR : Time = 320 din = 0 addr = 4 cs= 1 w_en = 1
DRIVER    : Time = 320 din = 0 addr = 4 cs= 1 w_en = 1
MONITOR   : Time = 320 din = 9 addr = 7 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 320
ADDR  : 7
DIN   : 9
====================================
GENERATOR : Time = 340 din = 2 addr = 4 cs= 1 w_en = 0
DRIVER    : Time = 340 din = 2 addr = 4 cs= 1 w_en = 0
MONITOR   : Time = 340 din = 0 addr = 4 cs= 1 w_en = 1  dout = 7

====================================
         WRITE OPERATION
====================================
TIME  : 340
ADDR  : 4
DIN   : 0
====================================
GENERATOR : Time = 360 din = 6 addr = 3 cs= 1 w_en = 0
DRIVER    : Time = 360 din = 6 addr = 3 cs= 1 w_en = 0
MONITOR   : Time = 360 din = 2 addr = 4 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 360
ADDR           : 4
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 380 din = 9 addr = 1 cs= 1 w_en = 1
DRIVER    : Time = 380 din = 9 addr = 1 cs= 1 w_en = 1
MONITOR   : Time = 380 din = 6 addr = 3 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 380
ADDR           : 3
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 400 din = 4 addr = 3 cs= 1 w_en = 1
DRIVER    : Time = 400 din = 4 addr = 3 cs= 1 w_en = 1
MONITOR   : Time = 400 din = 9 addr = 1 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 400
ADDR  : 1
DIN   : 9
====================================
GENERATOR : Time = 420 din = 2 addr = 1 cs= 1 w_en = 1
DRIVER    : Time = 420 din = 2 addr = 1 cs= 1 w_en = 1
MONITOR   : Time = 420 din = 4 addr = 3 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 420
ADDR  : 3
DIN   : 4
====================================
GENERATOR : Time = 440 din = 14 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 440 din = 14 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 440 din = 2 addr = 1 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 440
ADDR  : 1
DIN   : 2
====================================
GENERATOR : Time = 460 din = 7 addr = 2 cs= 1 w_en = 0
DRIVER    : Time = 460 din = 7 addr = 2 cs= 1 w_en = 0
MONITOR   : Time = 460 din = 14 addr = 0 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 460
ADDR  : 0
DIN   : 14
====================================
GENERATOR : Time = 480 din = 4 addr = 6 cs= 1 w_en = 0
DRIVER    : Time = 480 din = 4 addr = 6 cs= 1 w_en = 0
MONITOR   : Time = 480 din = 7 addr = 2 cs= 1 w_en = 0  dout = 10

====================================
          READ OPERATION
====================================
TIME           : 480
ADDR           : 2
------------------------------------
EXPECTED DOUT  : 10
ACTUAL DOUT    : 10
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 500 din = 1 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 500 din = 1 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 500 din = 4 addr = 6 cs= 1 w_en = 0  dout = 4

====================================
          READ OPERATION
====================================
TIME           : 500
ADDR           : 6
------------------------------------
EXPECTED DOUT  : 4
ACTUAL DOUT    : 4
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 520 din = 13 addr = 5 cs= 0 w_en = 1
DRIVER    : Time = 520 din = 13 addr = 5 cs= 0 w_en = 1
MONITOR   : Time = 520 din = 1 addr = 0 cs= 1 w_en = 1  dout = 4

====================================
         WRITE OPERATION
====================================
TIME  : 520
ADDR  : 0
DIN   : 1
====================================
GENERATOR : Time = 540 din = 3 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 540 din = 3 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 540 din = 13 addr = 5 cs= 0 w_en = 1  dout = 4

====================================
         INVALID OPERATION
====================================
TIME  : 540
CS    : 0
W_EN  : 1
====================================
GENERATOR : Time = 560 din = 13 addr = 4 cs= 1 w_en = 0
DRIVER    : Time = 560 din = 13 addr = 4 cs= 1 w_en = 0
MONITOR   : Time = 560 din = 3 addr = 0 cs= 1 w_en = 1  dout = 4

====================================
         WRITE OPERATION
====================================
TIME  : 560
ADDR  : 0
DIN   : 3
====================================
GENERATOR : Time = 580 din = 0 addr = 3 cs= 1 w_en = 1
DRIVER    : Time = 580 din = 0 addr = 3 cs= 1 w_en = 1
MONITOR   : Time = 580 din = 13 addr = 4 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 580
ADDR           : 4
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 600 din = 3 addr = 1 cs= 1 w_en = 1
DRIVER    : Time = 600 din = 3 addr = 1 cs= 1 w_en = 1
MONITOR   : Time = 600 din = 0 addr = 3 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 600
ADDR  : 3
DIN   : 0
====================================
GENERATOR : Time = 620 din = 8 addr = 2 cs= 1 w_en = 1
DRIVER    : Time = 620 din = 8 addr = 2 cs= 1 w_en = 1
MONITOR   : Time = 620 din = 3 addr = 1 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 620
ADDR  : 1
DIN   : 3
====================================
GENERATOR : Time = 640 din = 3 addr = 5 cs= 1 w_en = 1
DRIVER    : Time = 640 din = 3 addr = 5 cs= 1 w_en = 1
MONITOR   : Time = 640 din = 8 addr = 2 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 640
ADDR  : 2
DIN   : 8
====================================
GENERATOR : Time = 660 din = 11 addr = 3 cs= 1 w_en = 0
DRIVER    : Time = 660 din = 11 addr = 3 cs= 1 w_en = 0
MONITOR   : Time = 660 din = 3 addr = 5 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 660
ADDR  : 5
DIN   : 3
====================================
GENERATOR : Time = 680 din = 10 addr = 0 cs= 1 w_en = 0
DRIVER    : Time = 680 din = 10 addr = 0 cs= 1 w_en = 0
MONITOR   : Time = 680 din = 11 addr = 3 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 680
ADDR           : 3
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 700 din = 4 addr = 5 cs= 1 w_en = 1
DRIVER    : Time = 700 din = 4 addr = 5 cs= 1 w_en = 1
MONITOR   : Time = 700 din = 10 addr = 0 cs= 1 w_en = 0  dout = 3

====================================
          READ OPERATION
====================================
TIME           : 700
ADDR           : 0
------------------------------------
EXPECTED DOUT  : 3
ACTUAL DOUT    : 3
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 720 din = 14 addr = 3 cs= 1 w_en = 0
DRIVER    : Time = 720 din = 14 addr = 3 cs= 1 w_en = 0
MONITOR   : Time = 720 din = 4 addr = 5 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 720
ADDR  : 5
DIN   : 4
====================================
GENERATOR : Time = 740 din = 10 addr = 5 cs= 1 w_en = 1
DRIVER    : Time = 740 din = 10 addr = 5 cs= 1 w_en = 1
MONITOR   : Time = 740 din = 14 addr = 3 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 740
ADDR           : 3
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 760 din = 10 addr = 5 cs= 1 w_en = 1
DRIVER    : Time = 760 din = 10 addr = 5 cs= 1 w_en = 1
MONITOR   : Time = 760 din = 10 addr = 5 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 760
ADDR  : 5
DIN   : 10
====================================
GENERATOR : Time = 780 din = 13 addr = 6 cs= 1 w_en = 1
DRIVER    : Time = 780 din = 13 addr = 6 cs= 1 w_en = 1
MONITOR   : Time = 780 din = 10 addr = 5 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 780
ADDR  : 5
DIN   : 10
====================================
GENERATOR : Time = 800 din = 0 addr = 4 cs= 1 w_en = 0
DRIVER    : Time = 800 din = 0 addr = 4 cs= 1 w_en = 0
MONITOR   : Time = 800 din = 13 addr = 6 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 800
ADDR  : 6
DIN   : 13
====================================
GENERATOR : Time = 820 din = 0 addr = 7 cs= 1 w_en = 1
DRIVER    : Time = 820 din = 0 addr = 7 cs= 1 w_en = 1
MONITOR   : Time = 820 din = 0 addr = 4 cs= 1 w_en = 0  dout = 0

====================================
          READ OPERATION
====================================
TIME           : 820
ADDR           : 4
------------------------------------
EXPECTED DOUT  : 0
ACTUAL DOUT    : 0
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 840 din = 13 addr = 0 cs= 1 w_en = 0
DRIVER    : Time = 840 din = 13 addr = 0 cs= 1 w_en = 0
MONITOR   : Time = 840 din = 0 addr = 7 cs= 1 w_en = 1  dout = 0

====================================
         WRITE OPERATION
====================================
TIME  : 840
ADDR  : 7
DIN   : 0
====================================
GENERATOR : Time = 860 din = 10 addr = 0 cs= 1 w_en = 0
DRIVER    : Time = 860 din = 10 addr = 0 cs= 1 w_en = 0
MONITOR   : Time = 860 din = 13 addr = 0 cs= 1 w_en = 0  dout = 3

====================================
          READ OPERATION
====================================
TIME           : 860
ADDR           : 0
------------------------------------
EXPECTED DOUT  : 3
ACTUAL DOUT    : 3
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 880 din = 3 addr = 3 cs= 1 w_en = 1
DRIVER    : Time = 880 din = 3 addr = 3 cs= 1 w_en = 1
MONITOR   : Time = 880 din = 10 addr = 0 cs= 1 w_en = 0  dout = 3

====================================
          READ OPERATION
====================================
TIME           : 880
ADDR           : 0
------------------------------------
EXPECTED DOUT  : 3
ACTUAL DOUT    : 3
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 900 din = 4 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 900 din = 4 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 900 din = 3 addr = 3 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 900
ADDR  : 3
DIN   : 3
====================================
GENERATOR : Time = 920 din = 3 addr = 4 cs= 1 w_en = 1
DRIVER    : Time = 920 din = 3 addr = 4 cs= 1 w_en = 1
MONITOR   : Time = 920 din = 4 addr = 0 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 920
ADDR  : 0
DIN   : 4
====================================
GENERATOR : Time = 940 din = 8 addr = 4 cs= 1 w_en = 0
DRIVER    : Time = 940 din = 8 addr = 4 cs= 1 w_en = 0
MONITOR   : Time = 940 din = 3 addr = 4 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 940
ADDR  : 4
DIN   : 3
====================================
GENERATOR : Time = 960 din = 6 addr = 7 cs= 1 w_en = 1
DRIVER    : Time = 960 din = 6 addr = 7 cs= 1 w_en = 1
MONITOR   : Time = 960 din = 8 addr = 4 cs= 1 w_en = 0  dout = 3

====================================
          READ OPERATION
====================================
TIME           : 960
ADDR           : 4
------------------------------------
EXPECTED DOUT  : 3
ACTUAL DOUT    : 3
------------------------------------
RESULT : TEST CASE PASSED
====================================
GENERATOR : Time = 980 din = 3 addr = 0 cs= 1 w_en = 1
DRIVER    : Time = 980 din = 3 addr = 0 cs= 1 w_en = 1
MONITOR   : Time = 980 din = 6 addr = 7 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 980
ADDR  : 7
DIN   : 6
====================================
GENERATOR : Time = 1000 din = 13 addr = 6 cs= 1 w_en = 1
DRIVER    : Time = 1000 din = 13 addr = 6 cs= 1 w_en = 1
MONITOR   : Time = 1000 din = 3 addr = 0 cs= 1 w_en = 1  dout = 3

====================================
         WRITE OPERATION
====================================
TIME  : 1000
ADDR  : 0
DIN   : 3
====================================



########################################
#         VERIFICATION REPORT          #
########################################
TOTAL TESTS  : 17
PASSED TESTS : 17
FAILED TESTS : 0
===================================
| STATUS : ALL TEST CASES PASSED  |
===================================
Simulation complete via $finish(1) at time 1020 NS + 0
./testbench.sv:27     $finish;

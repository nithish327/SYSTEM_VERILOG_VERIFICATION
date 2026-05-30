xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
=======================
    FIFO TEST START    
=======================
GENERATOR : Time = 10 rst=0 w_en=0 r_en=1 d_in=174 full=0 empty=0 data_out=0
DRIVER : Time = 10 rst=0 w_en=0 r_en=1 d_in=174 full=0 empty=0 data_out=0
MONITOR : Time = 10 rst=1 w_en=0 r_en=0 d_in=0 full=0 empty=1 data_out=0
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 20 rst=0 w_en=1 r_en=0 d_in=210 full=0 empty=0 data_out=0
DRIVER : Time = 20 rst=0 w_en=1 r_en=0 d_in=210 full=0 empty=0 data_out=0
MONITOR : Time = 20 rst=0 w_en=0 r_en=1 d_in=174 full=0 empty=1 data_out=0
GENERATOR : Time = 30 rst=1 w_en=0 r_en=1 d_in=204 full=0 empty=0 data_out=0
DRIVER : Time = 30 rst=1 w_en=0 r_en=1 d_in=204 full=0 empty=0 data_out=0
MONITOR : Time = 30 rst=0 w_en=1 r_en=0 d_in=210 full=0 empty=1 data_out=0
-----------------------------------------
WRITE OPERATION
TIME      = 30
WRITE PTR = 0
DATA IN   = 210
-----------------------------------------
GENERATOR : Time = 40 rst=1 w_en=1 r_en=0 d_in=119 full=0 empty=0 data_out=0
DRIVER : Time = 40 rst=1 w_en=1 r_en=0 d_in=119 full=0 empty=0 data_out=0
MONITOR : Time = 40 rst=1 w_en=0 r_en=1 d_in=204 full=0 empty=1 data_out=0
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 50 rst=0 w_en=1 r_en=0 d_in=102 full=0 empty=0 data_out=0
DRIVER : Time = 50 rst=0 w_en=1 r_en=0 d_in=102 full=0 empty=0 data_out=0
MONITOR : Time = 50 rst=1 w_en=1 r_en=0 d_in=119 full=0 empty=1 data_out=0
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 60 rst=0 w_en=0 r_en=1 d_in=64 full=0 empty=0 data_out=0
DRIVER : Time = 60 rst=0 w_en=0 r_en=1 d_in=64 full=0 empty=0 data_out=0
MONITOR : Time = 60 rst=0 w_en=1 r_en=0 d_in=102 full=0 empty=1 data_out=0
-----------------------------------------
WRITE OPERATION
TIME      = 60
WRITE PTR = 0
DATA IN   = 102
-----------------------------------------
GENERATOR : Time = 70 rst=0 w_en=0 r_en=1 d_in=252 full=0 empty=0 data_out=0
DRIVER : Time = 70 rst=0 w_en=0 r_en=1 d_in=252 full=0 empty=0 data_out=0
MONITOR : Time = 70 rst=0 w_en=0 r_en=1 d_in=64 full=0 empty=0 data_out=102
-----------------------------------------
READ OPERATION
TIME        = 70
READ PTR    = 0
EXPECTED    = 102
ACTUAL      = 102
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 80 rst=0 w_en=1 r_en=0 d_in=44 full=0 empty=0 data_out=0
DRIVER : Time = 80 rst=0 w_en=1 r_en=0 d_in=44 full=0 empty=0 data_out=0
MONITOR : Time = 80 rst=0 w_en=0 r_en=1 d_in=252 full=0 empty=1 data_out=102
GENERATOR : Time = 90 rst=0 w_en=1 r_en=0 d_in=49 full=0 empty=0 data_out=0
DRIVER : Time = 90 rst=0 w_en=1 r_en=0 d_in=49 full=0 empty=0 data_out=0
MONITOR : Time = 90 rst=0 w_en=1 r_en=0 d_in=44 full=0 empty=1 data_out=102
-----------------------------------------
WRITE OPERATION
TIME      = 90
WRITE PTR = 102
DATA IN   = 44
-----------------------------------------
GENERATOR : Time = 100 rst=0 w_en=0 r_en=1 d_in=114 full=0 empty=0 data_out=0
DRIVER : Time = 100 rst=0 w_en=0 r_en=1 d_in=114 full=0 empty=0 data_out=0
MONITOR : Time = 100 rst=0 w_en=1 r_en=0 d_in=49 full=0 empty=0 data_out=102
-----------------------------------------
WRITE OPERATION
TIME      = 100
WRITE PTR = 102
DATA IN   = 49
-----------------------------------------
GENERATOR : Time = 110 rst=1 w_en=1 r_en=0 d_in=84 full=0 empty=0 data_out=0
DRIVER : Time = 110 rst=1 w_en=1 r_en=0 d_in=84 full=0 empty=0 data_out=0
MONITOR : Time = 110 rst=0 w_en=0 r_en=1 d_in=114 full=0 empty=0 data_out=44
-----------------------------------------
READ OPERATION
TIME        = 110
READ PTR    = 1
EXPECTED    = 44
ACTUAL      = 44
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 120 rst=1 w_en=1 r_en=0 d_in=78 full=0 empty=0 data_out=0
DRIVER : Time = 120 rst=1 w_en=1 r_en=0 d_in=78 full=0 empty=0 data_out=0
MONITOR : Time = 120 rst=1 w_en=1 r_en=0 d_in=84 full=0 empty=1 data_out=44
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 130 rst=0 w_en=0 r_en=1 d_in=179 full=0 empty=0 data_out=0
DRIVER : Time = 130 rst=0 w_en=0 r_en=1 d_in=179 full=0 empty=0 data_out=0
MONITOR : Time = 130 rst=1 w_en=1 r_en=0 d_in=78 full=0 empty=1 data_out=44
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 140 rst=1 w_en=0 r_en=1 d_in=22 full=0 empty=0 data_out=0
DRIVER : Time = 140 rst=1 w_en=0 r_en=1 d_in=22 full=0 empty=0 data_out=0
MONITOR : Time = 140 rst=0 w_en=0 r_en=1 d_in=179 full=0 empty=1 data_out=44
GENERATOR : Time = 150 rst=0 w_en=0 r_en=1 d_in=236 full=0 empty=0 data_out=0
DRIVER : Time = 150 rst=0 w_en=0 r_en=1 d_in=236 full=0 empty=0 data_out=0
MONITOR : Time = 150 rst=1 w_en=0 r_en=1 d_in=22 full=0 empty=1 data_out=44
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 160 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=0 data_out=0
DRIVER : Time = 160 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=0 data_out=0
MONITOR : Time = 160 rst=0 w_en=0 r_en=1 d_in=236 full=0 empty=1 data_out=44
GENERATOR : Time = 170 rst=0 w_en=1 r_en=0 d_in=247 full=0 empty=0 data_out=0
DRIVER : Time = 170 rst=0 w_en=1 r_en=0 d_in=247 full=0 empty=0 data_out=0
MONITOR : Time = 170 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=1 data_out=44
GENERATOR : Time = 180 rst=0 w_en=1 r_en=0 d_in=11 full=0 empty=0 data_out=0
DRIVER : Time = 180 rst=0 w_en=1 r_en=0 d_in=11 full=0 empty=0 data_out=0
MONITOR : Time = 180 rst=0 w_en=1 r_en=0 d_in=247 full=0 empty=1 data_out=44
-----------------------------------------
WRITE OPERATION
TIME      = 180
WRITE PTR = 0
DATA IN   = 247
-----------------------------------------
GENERATOR : Time = 190 rst=0 w_en=0 r_en=1 d_in=113 full=0 empty=0 data_out=0
DRIVER : Time = 190 rst=0 w_en=0 r_en=1 d_in=113 full=0 empty=0 data_out=0
MONITOR : Time = 190 rst=0 w_en=1 r_en=0 d_in=11 full=0 empty=0 data_out=44
-----------------------------------------
WRITE OPERATION
TIME      = 190
WRITE PTR = 0
DATA IN   = 11
-----------------------------------------
GENERATOR : Time = 200 rst=0 w_en=0 r_en=1 d_in=91 full=0 empty=0 data_out=0
DRIVER : Time = 200 rst=0 w_en=0 r_en=1 d_in=91 full=0 empty=0 data_out=0
MONITOR : Time = 200 rst=0 w_en=0 r_en=1 d_in=113 full=0 empty=0 data_out=247
-----------------------------------------
READ OPERATION
TIME        = 200
READ PTR    = 0
EXPECTED    = 247
ACTUAL      = 247
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 210 rst=0 w_en=0 r_en=1 d_in=128 full=0 empty=0 data_out=0
DRIVER : Time = 210 rst=0 w_en=0 r_en=1 d_in=128 full=0 empty=0 data_out=0
MONITOR : Time = 210 rst=0 w_en=0 r_en=1 d_in=91 full=0 empty=0 data_out=11
-----------------------------------------
READ OPERATION
TIME        = 210
READ PTR    = 1
EXPECTED    = 11
ACTUAL      = 11
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 220 rst=0 w_en=0 r_en=1 d_in=250 full=0 empty=0 data_out=0
DRIVER : Time = 220 rst=0 w_en=0 r_en=1 d_in=250 full=0 empty=0 data_out=0
MONITOR : Time = 220 rst=0 w_en=0 r_en=1 d_in=128 full=0 empty=1 data_out=11
GENERATOR : Time = 230 rst=0 w_en=1 r_en=0 d_in=3 full=0 empty=0 data_out=0
DRIVER : Time = 230 rst=0 w_en=1 r_en=0 d_in=3 full=0 empty=0 data_out=0
MONITOR : Time = 230 rst=0 w_en=0 r_en=1 d_in=250 full=0 empty=1 data_out=11
GENERATOR : Time = 240 rst=0 w_en=1 r_en=0 d_in=145 full=0 empty=0 data_out=0
DRIVER : Time = 240 rst=0 w_en=1 r_en=0 d_in=145 full=0 empty=0 data_out=0
MONITOR : Time = 240 rst=0 w_en=1 r_en=0 d_in=3 full=0 empty=1 data_out=11
-----------------------------------------
WRITE OPERATION
TIME      = 240
WRITE PTR = 11
DATA IN   = 3
-----------------------------------------
GENERATOR : Time = 250 rst=0 w_en=0 r_en=1 d_in=103 full=0 empty=0 data_out=0
DRIVER : Time = 250 rst=0 w_en=0 r_en=1 d_in=103 full=0 empty=0 data_out=0
MONITOR : Time = 250 rst=0 w_en=1 r_en=0 d_in=145 full=0 empty=0 data_out=11
-----------------------------------------
WRITE OPERATION
TIME      = 250
WRITE PTR = 11
DATA IN   = 145
-----------------------------------------
GENERATOR : Time = 260 rst=1 w_en=0 r_en=1 d_in=156 full=0 empty=0 data_out=0
DRIVER : Time = 260 rst=1 w_en=0 r_en=1 d_in=156 full=0 empty=0 data_out=0
MONITOR : Time = 260 rst=0 w_en=0 r_en=1 d_in=103 full=0 empty=0 data_out=3
-----------------------------------------
READ OPERATION
TIME        = 260
READ PTR    = 2
EXPECTED    = 3
ACTUAL      = 3
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 270 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=0 data_out=0
DRIVER : Time = 270 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=0 data_out=0
MONITOR : Time = 270 rst=1 w_en=0 r_en=1 d_in=156 full=0 empty=1 data_out=3
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 280 rst=0 w_en=1 r_en=0 d_in=7 full=0 empty=0 data_out=0
DRIVER : Time = 280 rst=0 w_en=1 r_en=0 d_in=7 full=0 empty=0 data_out=0
MONITOR : Time = 280 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=1 data_out=3
GENERATOR : Time = 290 rst=0 w_en=0 r_en=1 d_in=98 full=0 empty=0 data_out=0
DRIVER : Time = 290 rst=0 w_en=0 r_en=1 d_in=98 full=0 empty=0 data_out=0
MONITOR : Time = 290 rst=0 w_en=1 r_en=0 d_in=7 full=0 empty=1 data_out=3
-----------------------------------------
WRITE OPERATION
TIME      = 290
WRITE PTR = 0
DATA IN   = 7
-----------------------------------------
GENERATOR : Time = 300 rst=0 w_en=0 r_en=1 d_in=248 full=0 empty=0 data_out=0
DRIVER : Time = 300 rst=0 w_en=0 r_en=1 d_in=248 full=0 empty=0 data_out=0
MONITOR : Time = 300 rst=0 w_en=0 r_en=1 d_in=98 full=0 empty=0 data_out=7
-----------------------------------------
READ OPERATION
TIME        = 300
READ PTR    = 0
EXPECTED    = 7
ACTUAL      = 7
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 310 rst=0 w_en=0 r_en=1 d_in=164 full=0 empty=0 data_out=0
DRIVER : Time = 310 rst=0 w_en=0 r_en=1 d_in=164 full=0 empty=0 data_out=0
MONITOR : Time = 310 rst=0 w_en=0 r_en=1 d_in=248 full=0 empty=1 data_out=7
GENERATOR : Time = 320 rst=1 w_en=0 r_en=1 d_in=36 full=0 empty=0 data_out=0
DRIVER : Time = 320 rst=1 w_en=0 r_en=1 d_in=36 full=0 empty=0 data_out=0
MONITOR : Time = 320 rst=0 w_en=0 r_en=1 d_in=164 full=0 empty=1 data_out=7
GENERATOR : Time = 330 rst=0 w_en=1 r_en=0 d_in=47 full=0 empty=0 data_out=0
DRIVER : Time = 330 rst=0 w_en=1 r_en=0 d_in=47 full=0 empty=0 data_out=0
MONITOR : Time = 330 rst=1 w_en=0 r_en=1 d_in=36 full=0 empty=1 data_out=7
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 340 rst=0 w_en=1 r_en=0 d_in=214 full=0 empty=0 data_out=0
DRIVER : Time = 340 rst=0 w_en=1 r_en=0 d_in=214 full=0 empty=0 data_out=0
MONITOR : Time = 340 rst=0 w_en=1 r_en=0 d_in=47 full=0 empty=1 data_out=7
-----------------------------------------
WRITE OPERATION
TIME      = 340
WRITE PTR = 0
DATA IN   = 47
-----------------------------------------
GENERATOR : Time = 350 rst=0 w_en=0 r_en=1 d_in=95 full=0 empty=0 data_out=0
DRIVER : Time = 350 rst=0 w_en=0 r_en=1 d_in=95 full=0 empty=0 data_out=0
MONITOR : Time = 350 rst=0 w_en=1 r_en=0 d_in=214 full=0 empty=0 data_out=7
-----------------------------------------
WRITE OPERATION
TIME      = 350
WRITE PTR = 0
DATA IN   = 214
-----------------------------------------
GENERATOR : Time = 360 rst=0 w_en=1 r_en=0 d_in=26 full=0 empty=0 data_out=0
DRIVER : Time = 360 rst=0 w_en=1 r_en=0 d_in=26 full=0 empty=0 data_out=0
MONITOR : Time = 360 rst=0 w_en=0 r_en=1 d_in=95 full=0 empty=0 data_out=47
-----------------------------------------
READ OPERATION
TIME        = 360
READ PTR    = 0
EXPECTED    = 47
ACTUAL      = 47
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 370 rst=0 w_en=0 r_en=1 d_in=100 full=0 empty=0 data_out=0
DRIVER : Time = 370 rst=0 w_en=0 r_en=1 d_in=100 full=0 empty=0 data_out=0
MONITOR : Time = 370 rst=0 w_en=1 r_en=0 d_in=26 full=0 empty=0 data_out=47
-----------------------------------------
WRITE OPERATION
TIME      = 370
WRITE PTR = 47
DATA IN   = 26
-----------------------------------------
GENERATOR : Time = 380 rst=0 w_en=0 r_en=1 d_in=6 full=0 empty=0 data_out=0
DRIVER : Time = 380 rst=0 w_en=0 r_en=1 d_in=6 full=0 empty=0 data_out=0
MONITOR : Time = 380 rst=0 w_en=0 r_en=1 d_in=100 full=0 empty=0 data_out=214
-----------------------------------------
READ OPERATION
TIME        = 380
READ PTR    = 1
EXPECTED    = 214
ACTUAL      = 214
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 390 rst=1 w_en=0 r_en=1 d_in=127 full=0 empty=0 data_out=0
DRIVER : Time = 390 rst=1 w_en=0 r_en=1 d_in=127 full=0 empty=0 data_out=0
MONITOR : Time = 390 rst=0 w_en=0 r_en=1 d_in=6 full=0 empty=0 data_out=26
-----------------------------------------
READ OPERATION
TIME        = 390
READ PTR    = 2
EXPECTED    = 26
ACTUAL      = 26
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 400 rst=0 w_en=1 r_en=0 d_in=130 full=0 empty=0 data_out=0
DRIVER : Time = 400 rst=0 w_en=1 r_en=0 d_in=130 full=0 empty=0 data_out=0
MONITOR : Time = 400 rst=1 w_en=0 r_en=1 d_in=127 full=0 empty=1 data_out=26
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 410 rst=0 w_en=0 r_en=1 d_in=99 full=0 empty=0 data_out=0
DRIVER : Time = 410 rst=0 w_en=0 r_en=1 d_in=99 full=0 empty=0 data_out=0
MONITOR : Time = 410 rst=0 w_en=1 r_en=0 d_in=130 full=0 empty=1 data_out=26
-----------------------------------------
WRITE OPERATION
TIME      = 410
WRITE PTR = 0
DATA IN   = 130
-----------------------------------------
GENERATOR : Time = 420 rst=1 w_en=1 r_en=0 d_in=6 full=0 empty=0 data_out=0
DRIVER : Time = 420 rst=1 w_en=1 r_en=0 d_in=6 full=0 empty=0 data_out=0
MONITOR : Time = 420 rst=0 w_en=0 r_en=1 d_in=99 full=0 empty=0 data_out=130
-----------------------------------------
READ OPERATION
TIME        = 420
READ PTR    = 0
EXPECTED    = 130
ACTUAL      = 130
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 430 rst=0 w_en=1 r_en=0 d_in=195 full=0 empty=0 data_out=0
DRIVER : Time = 430 rst=0 w_en=1 r_en=0 d_in=195 full=0 empty=0 data_out=0
MONITOR : Time = 430 rst=1 w_en=1 r_en=0 d_in=6 full=0 empty=1 data_out=130
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 440 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=0 data_out=0
DRIVER : Time = 440 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=0 data_out=0
MONITOR : Time = 440 rst=0 w_en=1 r_en=0 d_in=195 full=0 empty=1 data_out=130
-----------------------------------------
WRITE OPERATION
TIME      = 440
WRITE PTR = 0
DATA IN   = 195
-----------------------------------------
GENERATOR : Time = 450 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=0 data_out=0
DRIVER : Time = 450 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=0 data_out=0
MONITOR : Time = 450 rst=0 w_en=0 r_en=1 d_in=7 full=0 empty=0 data_out=195
-----------------------------------------
READ OPERATION
TIME        = 450
READ PTR    = 0
EXPECTED    = 195
ACTUAL      = 195
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 460 rst=1 w_en=0 r_en=1 d_in=173 full=0 empty=0 data_out=0
DRIVER : Time = 460 rst=1 w_en=0 r_en=1 d_in=173 full=0 empty=0 data_out=0
MONITOR : Time = 460 rst=0 w_en=0 r_en=1 d_in=110 full=0 empty=1 data_out=195
GENERATOR : Time = 470 rst=0 w_en=1 r_en=0 d_in=239 full=0 empty=0 data_out=0
DRIVER : Time = 470 rst=0 w_en=1 r_en=0 d_in=239 full=0 empty=0 data_out=0
MONITOR : Time = 470 rst=1 w_en=0 r_en=1 d_in=173 full=0 empty=1 data_out=195
-----------------------------------------
           RESET DETECTED
-----------------------------------------
GENERATOR : Time = 480 rst=0 w_en=0 r_en=1 d_in=56 full=0 empty=0 data_out=0
DRIVER : Time = 480 rst=0 w_en=0 r_en=1 d_in=56 full=0 empty=0 data_out=0
MONITOR : Time = 480 rst=0 w_en=1 r_en=0 d_in=239 full=0 empty=1 data_out=195
-----------------------------------------
WRITE OPERATION
TIME      = 480
WRITE PTR = 0
DATA IN   = 239
-----------------------------------------
GENERATOR : Time = 490 rst=0 w_en=0 r_en=1 d_in=206 full=0 empty=0 data_out=0
DRIVER : Time = 490 rst=0 w_en=0 r_en=1 d_in=206 full=0 empty=0 data_out=0
MONITOR : Time = 490 rst=0 w_en=0 r_en=1 d_in=56 full=0 empty=0 data_out=239
-----------------------------------------
READ OPERATION
TIME        = 490
READ PTR    = 0
EXPECTED    = 239
ACTUAL      = 239
STATUS      = PASS
-----------------------------------------
GENERATOR : Time = 500 rst=0 w_en=0 r_en=1 d_in=190 full=0 empty=0 data_out=0
DRIVER : Time = 500 rst=0 w_en=0 r_en=1 d_in=190 full=0 empty=0 data_out=0
MONITOR : Time = 500 rst=0 w_en=0 r_en=1 d_in=206 full=0 empty=1 data_out=239


=========================================
        SCOREBOARD REPORT
=========================================
TOTAL TESTS  = 12
PASSED TESTS = 12
FAILED TESTS = 0
=========================================
Simulation Finished Successfully!

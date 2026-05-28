; Dengeki Nurse English Translation - SAVE.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; The Save system.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	For this save dialog, the game uses the same process slots reserved for per-script names; therefore, every script contains a second set of process defines placed after the jump to this script.
; 	Despite this, many of the processes defined are only used once, and some are even unused!
; 	For the sake of efficiency, I've managed to reduce these down to one process, and the second set of name defines for all in-game scripts should be dummied out.

; (define-proc 10 (<> (menu1 22 345 22 361 (</> (/ (text #:col 4 '|34368| "　　Ｎｏ　　" '|34368|)) (/ (text-color 4) (text "　　Ｙｅｓ　　"))))))
; (define-proc 11 (<> (menu1 22 345 22 361 (</> (/ (text-color 4) (text "　　Ｙｅｓ　　")) (/ (text #:col 4 '|34368| "　　Ｎｏ　　" '|34368|)))))) ; This line appears to be unused
; (define-proc 12 (<> (str "Do you want to overwrite existing data?"))) ; This line appears to be unused
; (define-proc 13 (<> (text-frame 3 324 52 379) (text-reset 15) (text-color 1) (text "　　　") (str "Are you sure you want to end the game?")))

  (define-proc 8  (<> (text-frame 3 324 52 379) (text-reset 15) (text 'br) (text "　　　　　　　　　") (str "Save complete!") (proc 15))) ; originally proc 14
  (loop
   (set-var T 0)
   ((cmd 199) 4)
   ((cmd 211) 1 3)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (text "　　　") (str "Which chart would you like to save to?")
   (menu1
    4 345  16 345  28 345
    4 361  16 361  28 361  40 361
    (</>
     (/ (text #:col 4 "　") (str "Chart ")   (text "１　"))
     (/ (text #:col 4 "　") (str "Chart ")   (text "２　"))
     (/ (text #:col 4 "　") (str "Chart ")   (text "３　"))
     (/ (text #:col 4 "　") (str "Chart ")   (text "４　"))
     (/ (text #:col 4 "　") (str "Chart ")   (text "５　"))
     (/ (text #:col 4 "　") (str " Cancel ") (text "　"))
     (/ (text #:col 4 "　") (str "Game End") (text "　"))))

;	The following line decompiled as (set-var |[| 0), which the compiler (as of juice-0.0.7-DEV+20220419-win) doesn't accept as valid.
; 	I've changed it arbitrarily to R to get it to compile, but the value has to be changed back in a hex editor (from 10 to A0).

   (set-var R 0)

;	Back to regularly scheduled programming...

   (text-color 4)
   (text-frame 3 324 52 379)
   (text-reset 15)
; FMT:
;  (branch-reg 940 (</> (/ (nop@)) (/ (set-reg 777 #t) (set-reg 940 #f)))) (branch-reg 941 (</> (/ (nop@)) (/ (set-reg 778 #t) (set-reg 941 #f)))) (branch-reg 942 (</> (/ (nop@)) (/ (set-reg 779 #t) (set-reg 942 #f))))
   (branch-var S
    (</>
     (/ (set-reg 1000 #f) (nop@) (set-reg 990 #t) (set-reg 991 #f) (set-reg 333 #f) (set-reg 666 #f) (set-reg 965 #f) (set-reg 966 #f) (set-reg 967 #t) (flag-save 0) (proc 8))
     (/ (set-reg 1001 #f) (nop@) (set-reg 990 #t) (set-reg 991 #f) (set-reg 333 #f) (set-reg 666 #f) (set-reg 965 #f) (set-reg 966 #t) (set-reg 967 #f) (flag-save 1) (proc 8) (exec-mem 18944 65535 528 23))
     (/ (set-reg 1002 #f) (nop@) (set-reg 990 #t) (set-reg 991 #f) (set-reg 333 #f) (set-reg 666 #f) (set-reg 965 #t) (set-reg 966 #f) (set-reg 967 #f) (flag-save 2) (proc 8))
     (/ (set-reg 1003 #f) (nop@) (set-reg 990 #t) (set-reg 991 #f) (set-reg 333 #f) (set-reg 666 #f) (set-reg 965 #t) (set-reg 966 #f) (set-reg 967 #t) (flag-save 3) (proc 8))
     (/ (set-reg 1004 #f) (nop@) (set-reg 990 #t) (set-reg 991 #f) (set-reg 333 #f) (set-reg 666 #f) (set-reg 965 #t) (set-reg 966 #t) (set-reg 967 #f) (flag-save 4) (proc 8))
     (/ (nop@))

; 	Game End

     (/
      (text-frame 3 324 52 379) (text-reset 15) (text-color 1) (text "　　　") (str "Are you sure you want to end the game?") ; originally proc 13
      ((cmd 211) 0 1)
      (menu1 22 345 22 361 (</> (/ (text #:col 4 '|34368| "　　Ｎｏ　　" '|34368|)) (/ (text-color 4) (text "　　Ｙｅｓ　　")))) ; originally proc 10
      (branch-var S
       (</>
        (/
         (text-frame 3 324 52 379)
         (text-reset 15)
         (exec-mem 18944 65535 528 23)
         (branch-reg 700 (</> (/ (nop@)) (/ (set-reg 991 #t) (set-reg 333 #t))))
; FMT
;        (branch-reg 777 (</> (/ (nop@)) (/ (set-reg 777 #f) (set-reg 940 #t)))) (branch-reg 778 (</> (/ (nop@)) (/ (set-reg 778 #f) (set-reg 941 #t)))) (branch-reg 779 (</> (/ (nop@)) (/ (set-reg 779 #f) (set-reg 942 #t))))
		 )
        (/
         (sound '|| 2)
         ((cmd 209) 0 2)
         (image-file "gpc¥Ns0506B.GPC")
; PC-98
         (image-mem 1 3)
; FMT
;        (image-mem 0)
         (image-file "gpc¥Waku2.GPC") (image-mem 1 3)
         ((cmd 209) 1 2)
         (text-frame 3 332 52 379)
         (text-color 4)
         (text "　　　　　　　　") (str "Thanks for playing!" 'br)
; PC-98
         (str "You can now eject the disk and turn off the power.")
; FMT
;        (str "You can now eject the save disk and power off.")
         (sound '|| 0)
; PC-98
         (loop)
; FMT
;        (wait) (set-reg 750 #t) ((cmd 212))
		 )
		 )))))
   (exec-mem 18944 65535 528 23)
   (if (</>
        (// (? (= C 1)) (nop@) (set-var B 1))
        (// (? (= C 2)) (nop@) (set-var B 2))
        (// (? (= C 3)) (nop@) (set-var B 3))
        (// (? (= C 4)) (nop@) (set-var B 4))
        (// (? (= C 5)) (nop@) (set-var B 5))))
   (branch-reg 700 (</> (/ (nop@)) (/ (set-reg 991 #t) (set-reg 333 #t))))
   ((cmd 212)))))
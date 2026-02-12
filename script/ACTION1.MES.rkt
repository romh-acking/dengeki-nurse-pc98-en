; Dengeki Nurse English Translation - ACTION1.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Loader called during the adventure segments for transitioning to and from battles, which use their own system independent of ADV98.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Battle-related programs/data loaded into memory

  (load-mem "cmd¥cyclearh.tcm" 6656)
  (load-mem "cmd¥nrsfent.tcm" 9216)
  (load-mem "dat¥nrsenemy.dat" 35664)
  (exec-mem 17920 1 1) ; whiteh.tcm

; 	Battle setup begins

  (loop
   (text-frame 0 0 79 399)
   (text-reset 1)
   (exec-mem 6656 7)
   (exec-mem 17920 0 1)

; 	Main graphics loaded here

   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1") ; acte.tcm
   (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
   (exec-mem 2816 "GET 20 71 320 8 64")
   (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥sflame.gpc") (image-mem 1 3)

; 	Text frames defined here

   (text-frame 26 256 53 335) (text-reset 15) ; Main text box  (Middle)
   (text-frame 6 320 19 384)  (text-reset 15) ; Opponent stats (Left)
   (text-frame 60 320 73 384) (text-reset 15) ; Player stats   (Right)
   (sound '|| 2)
   (sound '|| 0)
   (exec-mem 9216 0 35664)

; 	Opponent portrait loaded here

   (branch-var T
    (</>
     (/ (nop@))
     (/ (image-file "act_gpc¥d1enmf0a.gpc")    (image-mem 1 0))
     (/ (image-file "act_gpc¥d1enmf1a.gpc")    (image-mem 1 0))
     (/ (image-file "act_gpc¥d1enmf2a.gpc")    (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf3a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf4a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf5a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf6a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf7a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf8a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmf9a.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmfaa.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmfba.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmfca.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmfda.gpc") (image-mem 1 0))
     (/ (image-file "b:¥act_gpc¥d1enmfea.gpc") (image-mem 1 0))))

; 	Graphics printed to screen, placeholder text printed

   (exec-mem 2816 "VIEW 27 264 35 328,PUT 20 27 264,FREE 20,EXIT")
   (text-frame 35 289 52 313)
   (text-reset 15)
   (text-color 1)
   (text #:col 1 "　") (str " Now loading!")
   (exec-mem 6656 8)

; 	Battle music loaded here (05: Regular, 06: Boss, 07: Final Boss)

   (branch-var T
    (</>
     (/ (nop@))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse06.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse06.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse06.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse05.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse06.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse06.uso") (sound '|| 1))
     (/ (sound '|| "uso¥nurse07.uso") (sound '|| 1))))

   (exec-mem 9216 1 "T" "Q") ; Battle program actually executed here

   (branch-var Q
    (</>
     (/ (nop@))

; 	End of battle (player is returned to the adventure scene they came from)

     (/
      (exec-mem 17920 1 1)
      (exec-mem 6656 7)
      (sound '|| 2)
      (sound '|| 0)
      (exec-mem 18944 65535 528 33) ; mousecsr.tcm
      ((cmd 212)))

; 	Game Over scene (28 full-width characters wide)

     (/
      ((cmd 209) 0 2)
      (sound '|| 2)
      (sound '|| 0)
      (text-frame 0 0 79 399)
      (text-reset 0)
      (image-file "gpc¥gameover.gpc") (image-mem 1 3)
      ((cmd 193) 0 "gpa¥gameover.gpa")
      ((cmd 194) 0 "...ｱ...ｲ")
      ((cmd 195) 0 65535)
      ((cmd 197) 0 15)
      (sound '|| 0)
      (sound '|| "uso¥nurse03.uso")
      (sound '|| 1)
      ((cmd 209) 1 2)
      (text-frame 12 334 67 389) (text-reset 0)  (text #:col 15 "‘Ｄｅａｔｈ　ｓｈｏｕｌｄ　ｎｏｔ　ｈａｖｅ" 'br "　ｔａｋｅｎ　ｔｈｅｅ，　Ｄｅｎｇｅｋｉ　Ｎｕｒｓｅ．’")
      (exec-mem 34128 0 6 "▼" 40 376)
      (text-frame 12 334 67 389) (text-reset 0)  (text #:col 15 "　　　　　‘Ｉ　ｗｉｌｌ　ｇｉｖｅ　ｔｈｅｅ" 'br "　　　　　　ａｎｏｔｈｅｒ　ｃｈａｎｃｅ．’")
      (exec-mem 34128 0 6 "▼" 40 376)
      (text-frame 12 334 67 389) (text-reset 0)  (text #:col 15 "　　　　‘Ｄｏｓｔ　ｔｈｏｕ　ｗｉｓｈ　ｔｏ" 'br "　　　　　ｃｏｎｔｉｎｕｅ　ｔｈｙ　ｆｉｇｈｔ？’" 'br)
      (text-frame 22 358 67 399) ((cmd 211) 0 1) (menu1 24 372 42 372 (</> (/ (text "　　ＹＥＳ　　")) (/ (text "　　ＮＯ　　　"))))
      (text-frame 12 334 67 389)
      (text-reset 0)
      (branch-var S
       (</>

; 		When YES is selected

        (/
         (text "　‘Ｖｅｒｙ　ｇｏｏｄ，　Ｄｅｎｇｅｋｉ　Ｎｕｒｓｅ！’" 'br)
         (exec-mem 34128 0 6 "▼" 40 376)
         (text-frame 12 334 67 389) (text-reset 0) (text "　　　　‘Ｔａｋｅ　ｃａｒｅ　ａｎｄ　ｔｅｍｐｔ" 'br "　　　　　ｎｏｔ　ｔｈｅ　ｆａｔｅｓ．’")
         (exec-mem 34128 0 6 "▼" 40 376)
         (text-frame 12 334 67 389) (text-reset 0) (text "　　　‘Ｉ　ａｗａｉｔ　ｙｏｕｒ　ｒｅｔｕｒｎ．’")
         (exec-mem 34128 0 6 "▼" 40 376)
         (text-frame 12 334 67 389) (text-reset 0) (text #:col 10 "　　　Ｎｕｈ−ｕｈ，　Ｉ　ｄｏｎ’ｔ　ｗａｎｎａ" 'br "　　　ｓｅｅ　ｙｏｕ　ｈｅｒｅ　ａｇａｉｎ！") (text-color 15)
         (exec-mem 34128 0 6 "▼" 40 376)
         (sound '|| 2)
         (exec-mem 17920 1 1)
         ((cmd 197) 0 16))

; 		When NO is selected

        (/
         (text "　　　　　　‘Ｂｕｔ　ｔｈｏｕ　ｍｕｓｔ！’")
         (text-frame 22 358 67 399)
         ((cmd 211) 0 1)
         (menu1 33 356 33 372 (</> (/ (text "　　ＮＯ！　　")) (/ (text "　　ＹＥＳ　　"))))
         (text-frame 12 334 67 389)
         (text-reset 0)
         (branch-var S
          (</>

; 			When NO! is selected

           (/
            (text "　　‘Ｒｅｓｔ　ｔｈｅｎ　ｆｏｒ　ａｗｈｉｌｅ．’")
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 334 67 389) (text-reset 0) (text "‘Ｔｈｙ　ｄｅｅｄｓ　ａｒｅ　ｎｏｗ　ｏｎ　ｔｈｅ" 'br "　Ｉｍｐｅｒｉａｌ　Ｓｃｒｏｌｌｓ　ｏｆ　Ｈｏｎｏｒ．’")
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 334 67 389) (text-reset 0) (text "‘Ｈｏｌｄ　ＲＥＳＥＴ　ｂｅｆｏｒｅ　ｔｕｒｎｉｎｇ" 'br "　ｏｆｆ　ＰＯＷＥＲ，　ｏｒ　ｙｏｕｒ　ｄｅｅｄｓ−’")
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 334 67 389) (text-reset 0) (text #:col 10 "　Ｉ’ｍ　ｎｏｔ　ｃｏｍｉｎｇ　ｂａｃｋ　ｈｅｒｅ！！") (text-color 15)
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 324 67 379) (text-reset 0)
            ((cmd 209) 0 2)
            (sound '|| 2)
            ((cmd 197) 0 16)
            (image-file "gpc¥Ns0506B.GPC") (image-mem 1 3)
            (image-file "gpc¥Waku2.GPC")   (image-mem 1 3)
            ((cmd 209) 1 2)
            (text-frame 3 332 52 379)
            (text-color 4)
            (text "　　　　　　　　") (str "Thanks for playing!" 'br)
            (str "You can now eject the disk and turn off the power.")
            (sound '|| 0)
            (loop))

; 			When YES is selected

           (/
            ((text "　　‘Ｖｅｒｙ　ｇｏｏｄ！　Ａｓ　ｅｘｐｅｃｔｅｄ" 'br "　　　ｏｆ　ｔｈｅｅ，　Ｄｅｎｇｅｋｉ　Ｎｕｒｓｅ！’")
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 334 67 389) (text-reset 0) (text "　　　‘Ｔｅｍｐｔ　ｎｏｔ　ｔｈｅ　ｆａｔｅｓ！" 'br "　　　　Ｉ　ａｗａｉｔ　ｙｏｕｒ　ｒｅｔｕｒｎ．’")
            (exec-mem 34128 0 6 "▼" 40 376)
            (text-frame 12 334 67 389) (text-reset 0) (text #:col 10 "　Ｉ’ｍ　ｎｏｔ　ｃｏｍｉｎｇ　ｂａｃｋ　ｈｅｒｅ！！") (text-color 15)
            (exec-mem 34128 0 6 "▼" 40 376)
            ((cmd 197) 0 16)
            (sound '|| 2)
            (exec-mem 17920 1 1)))))))))))))
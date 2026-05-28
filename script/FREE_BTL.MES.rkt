; Dengeki Nurse (PC-98) - FREE_BTL.MES
; English Translation
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Free Battle mode, accessible from the Bonus Mode on the main menu.
; Effectively serves as ACTION1.MES, but with an interface.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  ((cmd 209) 0 2)

; 	Battle-related programs/data loaded into memory

  (load-mem "cmd¥cyclearh.tcm" 6656)
  (load-mem "cmd¥nrsfent.tcm" 9216)
  (load-mem "dat¥nrsenemy.dat" 35664)
  ((cmd 182) "dat¥ComBat.clm")

; 	Menu drawn to screen here
; 	(50 half-width characters, but positioned to be centered for 44)

  (loop
   (text-frame 0 0 79 399)
   (text-reset 9)
   (image-file "Gpc¥ComBat.gpc") (image-mem 1 3)
   (text-frame 19 316 68 391)
   (text-reset 9)
   (text-color 4)
   (str "Select the opponent you want to fight with a" 'br)
   (str "left-click, or press the Return key." 'br)
   (str "Return to the menu with a right-click or the" 'br)
   (str "ESC key.")
   ((cmd 209) 1 2)
   ((cmd 182) Q 2)
   (branch-var Q
    (</>
     (/ ((cmd 209) 0 2) (mes-jump "mes¥Ns_Menu.mes"))
     (/ (set-var U 1))
     (/ (set-var U 2))
     (/ (set-var U 3))
     (/ (set-var U 4))
     (/ (set-var U 5))
     (/ (set-var U 6))
     (/ (set-var U 7))
     (/ (set-var U 8))
     (/ (set-var U 9))
     (/ (set-var U 10))
     (/ (set-var U 11))
     (/ (set-var U 12))
     (/ (set-var U 13))
     (/ (set-var U 14))
     (/ (set-var U 15))))

; 	The screen fading to white here when it unfades at this point in ACTION1.MES, but otherwise these two scripts begin to look pretty similar starting from here

   (exec-mem 17920 1 1)

; 	Main graphics loaded here

   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
   (exec-mem 2816 "GET 20 71 320 8 64")
   (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥sflame.gpc") (image-mem 0 0)

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
     (/ (sound '|| 2) (sound '|| 0) (set-reg 758 #t) (mes-jump "mes¥Ns_Menu.mes"))
     (/ ((cmd 206) 0 0) (image-file "act_gpc¥d1enmf0a.gpc")    (image-mem 1 0))
     (/ ((cmd 206) 0 0) (image-file "act_gpc¥d1enmf1a.gpc")    (image-mem 1 0))
     (/ ((cmd 206) 0 0) (image-file "act_gpc¥d1enmf2a.gpc")    (image-mem 1 0))
     (/ ((cmd 206) 1 2) (image-file "b:¥act_gpc¥d1enmf3a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 2) (image-file "b:¥act_gpc¥d1enmf4a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 2) (image-file "b:¥act_gpc¥d1enmf5a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 3) (image-file "b:¥act_gpc¥d1enmf6a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmf7a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmf8a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmf9a.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmfaa.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmfba.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 4) (image-file "b:¥act_gpc¥d1enmfca.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 2) (image-file "b:¥act_gpc¥d1enmfda.gpc") (image-mem 1 0))
     (/ ((cmd 206) 1 3) (image-file "b:¥act_gpc¥d1enmfea.gpc") (image-mem 1 0))))

; 	Fade from white happens here which doesn't happen in ACTION1.MES, as explained earlier

   (exec-mem 17920 0 1)

; 	Graphics printed to screen, placeholder text printed

   (exec-mem 2816 "VIEW 27 264 35 328,PUT 20 27 264,FREE 20,EXIT")
   (text-frame 35 289 52 313)
   (text-reset 15)
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

   (exec-mem 6656 0)
   ((cmd 209) 0 2)
   ((cmd 198) 0 0 159 99 8))))
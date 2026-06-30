; Dengeki Nurse English Translation - NS13_01.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Black Nurse summons another hired gun for her pettiest scheme yet.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 10) (str "Johnny: ")))
  (define-proc 11 (<> (text-color 15) (str "Black Nurse: ")))
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M64")
  (exec-mem 10752 "LOAD> gpc¥ns1_K01.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_303.gpc,TEMP")
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (exec-mem 10752 "COPY> gpc¥ns1_K01.gpc,GPC")    (image-mem 0 0)
  (image-file "b:¥gpc¥ns1_302.gpc")               (image-mem 1 0)
  (exec-mem 10752 "COPY> b:¥gpc¥ns1_303.gpc,GPC") (image-mem 1 0)
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse04.uso")
; FMT
; (sound '|| "Nurse04.fmt")
  (sound '|| 1)
  (text-frame 0 0 79 399)
  (text-reset 1)
  (exec-mem 10752 "COPY> gpc¥ns1_K01.gpc,GPC")    (image-mem 1 0)
  (exec-mem 10752 "COPY> b:¥gpc¥ns1_303.gpc,GPC") (image-mem 1 3)
  ((cmd 193) 0 "gpa¥Ns1-K01.gpa")
  ((cmd 194) 0 ".ｱ.ｲ..ｳ...ｴ.....ｵ.......ｴ.....ｳ...ｲ..ｱ........")
  (text-frame 16 324 66 379)
  (text-reset 1)
  ((cmd 209) 1 2)
  ((cmd 204) 10 15)
  (proc 10)
      ; Johnny:
          (str "We act on your grudges, and do it with a" 'br)
  (str "smile...Oshioki Sentai Yoranger, here on the scene!")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "And I am Black Nurse of the Black" 'br)
  (str "Cross Society.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "You are my client for this mission, yes?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Indeed. You're a reliable performer," 'br)
  (str "aren't you?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Wahahahahahahahahahahhahahhahahahahahahaha-")
  (str "hahahahahahahahaha") (text "−") (str "! Agh, I dislocated my jaw...")
  ((cmd 195) 0 65535)
  (proc 16)
  (text-color 6)
  (str "Columbia: Master... Pull yourself together!" 'br)
  (str "Click! (Jaw resets)")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Ah... Thank you kindly...")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "......")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "We're on the exact same level as the" 'br)
  (str "Hissatsu Shiokinin! No more, no less! Wahahaha!")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Should I really be putting my trust in")
  (str "you lot...?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "I assure you, ma'am, that we are as" 'br)
  (str "unsinkable as the Titanic!")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "...Okay, whatever... My commanders are")
  (str "all on summer holiday, so I'm giving this to you.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "So, who is the target who needs punishment?")
  ((cmd 195) 0 65535)
  (proc 16)

; 	Dengeki Nurse appears on the screen

  ((cmd 197) 0 16)
  (exec-mem 1280 14 12 15 13)
  (exec-mem 6656 28 20 52 160)

; 	Text continues

  (proc 11)
      ; Black Nurse:
               (str "This girl. We have intel she's going" 'br)
  (str "to the beach on Sunday.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "And why does she require punishment?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Does it matter?")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "A proper punishment needs proper" 'br)
  (str "justification!")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Okay, she betrayed our organization.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "That's a pretty lame justification.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Look, she said she was taking a" 'br)
  (str "vacation in Japan, so I lent her my swimsuit.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "But she never returned it, the" 'br)
  (str "ultimate betrayal! Now I can't even go to the beach")
  (str "for my own summer holiday!")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "This...this shit pisses me off!")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "I wholly understand. You will be avenged," 'br)
  (str "make no mistake.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "And get my swimsuit back too!")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Our three punishment courses are Pine," 'br)
  (str "Bamboo, and Plum.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "What's the difference?")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Plum is just normal punishment.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Bamboo is punishment, but after taking" 'br)
  (str "embarassing photographs.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Pine is punishnent following way, way, WAY" 'br)
  (str "more embarrassing things.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Pine it is, then.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "As expected from the leader of the Black" 'br)
  (str "Cross Society, you go all-out.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Whatever! Just get on with it.")
  (proc 16)
  (proc 10)
      ; Johnny:
          (str "Make sure the punishment fee of 1 million" 'br)
  (str "ryo-bucks is transferred to the designated account.")
  (str "Ciao!")
  (proc 16)

; 	The Shioki Sentai Yoranger exit the scene.

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (exec-mem 10752 "COPY> gpc¥ns1_K01.gpc,GPC") (image-mem 0 0)
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 6656 28 16 63 281)
  ((cmd 197) 0 15)

; 	Text continues...

  (proc 11)
      ; Black Nurse:
               (str "...")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "We really need to solve this staff" 'br)
  (str "shortage soon.")
  ((cmd 195) 0 65535)
  (proc 16)
  ((cmd 209) 0 2)
  ((cmd 197) 0 16)
  (text-frame 3 324 52 379) (text-reset 15)
  (text-frame 4 16 51 303)  (text-reset 15)
  (exec-mem 10752 "EXIT")
  (exec-mem 2816 "EXIT")
  (sound '|| 2)
  (set-reg 990 #f)
  (mes-jump "b:¥mes¥ns13_02.mes")))
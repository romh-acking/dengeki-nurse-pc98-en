; Dengeki Nurse English Translation - NS14_01.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Black Nurse finally falls back to her own troops for support.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 6)  (str "Chodendo Nurse: ")))
  (define-proc 11 (<> (text-color 15) (str "Black Nurse: ")))
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "gpc¥ns1_k01.gpc")    (image-mem 0 0)
  (image-file "b:¥gpc¥ns1_403.gpc") (image-mem 1 0)
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse04.uso")
; FMT
; (sound '|| "Nurse04.fmt")
  (sound '|| 1)
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "gpc¥ns1_k01.gpc")    (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_402.gpc") (image-mem 1 3)
  ((cmd 193) 0 "gpa¥Ns1-K01.gpa")
  ((cmd 194) 0 ".ｱ.ｲ..ｳ...ｴ.....ｵ.......ｴ.....ｳ...ｲ..ｱ........")

; 	Text begins here...

  (text-frame 16 324 66 379)
  (text-reset 1)
  ((cmd 209) 1 2)
  (proc 10)
      ; Chodendo Nurse:
                  (str "I'm here... The Magnetic Lunatic" 'br)
  (str "Princess, Chodendo Nurse, at your service.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "I've been waiting. Make yourself" 'br)
  (str "comfortable.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "What's the mission on deck?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "You know of the F1 Grand Prix that" 'br)
  (str "will be in Japan next friday, correct?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "I am aware of such things.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "This year's GP is set to be unusually" 'br)
  (str "fierce.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "So they say.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "It appears the world champion will be" 'br)
  (str "decided at this GP...")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "And does this, pray tell, have" 'br)
  (str "anything to do with the Black Cross troops...?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "It has EVERYTHING to do with us!")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Go on...")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Behind the grand prix, there is a" 'br)
  (str "considerable amount of dirty money.")

; 	Moguri appears on screen

  ((cmd 195) 0 65535)
  (proc 16)
  ((cmd 197) 0 16)
  (exec-mem 1280 13 12 15 13)
  (exec-mem 6656 28 20 52 160)

; 	Text continues...

  (proc 11)
      ; Black Nurse:
               (str "This man, Moguri Suzuki, is the GP's" 'br)
  (str "star.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "He has large ears.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "He's the first Japanese driver to" 'br)
  (str "have the championship in his sights, and he" 'br)
  (str "intends to win it in Japan.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Men with big ears also tend to" 'br)
  (str "have a big...you know.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "A big nose?")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "...That's what they say where I'm" 'br)
  (str "from.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Anyway, Japanese fans are betting" 'br)
  (str "heavily on this man.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "I see, so we're going to crush" 'br)
  (str "him...")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Precisely. And we'll make sure Hoppy" 'br)
  (str "Senna wins instead.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Why Hoppy Senna?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "He's my type. (Blush)")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "...")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Also, I bet my entire monthly salary" 'br)
  (str "on Senna winning.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Very well, then. By the way, does" 'br)
  (str "Senna have big ears?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "They're normal! ...But he has a big" 'br)
  (str "nose.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Unfortunate.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Also, our spy reports that Dengeki" 'br)
  (str "Nurse will be present at the GP.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "I see, so we'll be multitasking." 'br)
  (str "Two birds, one stone.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "I'll be counting on you.")
  (proc 16)
  (proc 10)
      ; Chodendo Nurse:
                  (str "Roger that!")
  (proc 16)
  ((cmd 209) 0 2)
  (text-frame 3 324 52 379) (text-reset 15)
  (text-frame 4 16 51 303)  (text-reset 15)
  (exec-mem 2816 "EXIT")
  (sound '|| 2)
  (set-reg 990 #f)
  (mes-jump "b:¥mes¥ns14_02a.mes")))
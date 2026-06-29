; Dengeki Nurse English Translation - NS12_01.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Her first scheme foiled, Black Nurse calls upon another villain to carry out her dastardly will...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 2)  (str "Golgo 31: ")))
  (define-proc 11 (<> (text-color 15) (str "Black Nurse: ")))
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥ns1_k01.gpc")    (image-mem 0 0)
  (image-file "b:¥gpc¥ns1_203.gpc") (image-mem 1 0)
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
  (image-file "b:¥gpc¥ns1_202.gpc") (image-mem 1 3)
  ((cmd 193) 0 "gpa¥Ns1-K01.gpa")
  ((cmd 194) 0 ".ｱ.ｲ..ｳ...ｴ.....ｵ.......ｴ.....ｳ...ｲ..ｱ........")
  ((cmd 209) 1 2)
  (text-frame 16 324 66 379)
  (text-reset 1)
  (proc 10)
      ; Golgo 31:
            (str "The bearer of your bad news has arrived." 'br)
  (str "Golgo 31, at your service.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Hee hee hee! I've been waiting.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "Requesting my help for a hit...the mighty")
  (str "Black Cross Society has truly fallen.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "It's a job that only you can do.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "My fee will be substantial.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "We can discuss that with Accounting" 'br)
   (str "later.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "So, then...tell me what you want me to" 'br)
   (str "do.")
  ((cmd 195) 0 65535)
  (proc 16)
  ((cmd 197) 0 16)
  (exec-mem 1280 14 12 15 13)
  (exec-mem 6656 28 20 52 160)
  (proc 11)
      ; Black Nurse:
               (str "This is Akiko Ano, age 24. She is the" 'br)
  (str "Physics teacher in Cybernetic Girls' School.")
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "You want me to kill her?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "If it were that simple, I wouldn't" 'br)
  (str "have called you.")
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "That figures... After all, I'm the" 'br)
  (str "legendary sniper who's never landed a shot.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Yeah. So instead, I want you to create")
  (str "a scandal that will forever tarnish the reputation" 'br)
  (str "of Cybernetic Girls' School.")
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "Is that all?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "That's all. No need to probe deeper.")
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "Oh, so what about this Akiko woman then?")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "I just wanted to show her picture to" 'br)
  (str "you.")
  (proc 16)
  (proc 10)
      ; Golgo 31:
            (str "Okay.")
  (proc 16)
  ((cmd 209) 0 2)
  (text-frame 3 324 52 379) (text-reset 15)
  (text-frame 4 16 51 303)  (text-reset 15)
  (exec-mem 2816 "EXIT")
  (sound '|| 2)
  (set-reg 990 #f)
  (mes-jump "b:¥mes¥ns12_02.mes")))
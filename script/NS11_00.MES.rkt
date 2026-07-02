; Dengeki Nurse English Translation - NS11_00.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; The game opens with Black Nurse calling upon 0074 for a special assignment...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 4)  (str "0074: ")))
  (define-proc 11 (<> (text-color 15) (str "Black Nurse: ")))

; 	Episode title sequence setup

  (text-frame 0 0 79 399)
  (text-reset 15)
  (image-file "gpc¥Seki10.gpc")
; PC-98
  (image-mem 1 3) (sound '|| 0) (sound '|| "uso¥Nurse01a.uso") (sound '|| 1)
; FMT
; (image-mem 0)                 (sound '|se | "NRS_ADV.SE")    (sound '|| 100)
  ((cmd 209) 1 5)
  (exec-file "APPEARH.CMD b:¥gpc¥1WA.gpc,14,105,65,247,4,1,1") ; 65 was originally 66, but that caused a weird visual glitch; thanks VB for suggesting this fix
; FMT
; (sound '|se | 5)
  (delay 150 0)
  ((cmd 209) 0 5)

; 	Normal scene loading continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_103.gpc") (image-mem 0 0) (exec-mem 2816 "GET 1 0 0 24 144")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_101.gpc") (image-mem 0 0) (exec-mem 2816 "GET 8 50 154 14 89")
  (text-frame 0 0 79 399) (text-reset 1) (image-file "gpc¥ns1_k01.gpc")    (image-mem 0 0)
  (image-file "b:¥gpc¥ns1_102.gpc") (image-mem 1 0)
  (exec-mem 2816 "ACCESS 0")
; PC-98
  (sound '|| 0) (sound '|| "uso¥Nurse04.uso")
; FMT
; (sound '|| "Nurse04.fmt")
  (sound '|| 1)
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "gpc¥ns1_k01.gpc") (image-mem 1 3)
  (exec-mem 1280 0 0 0 0)
  ((cmd 193) 0 "gpa¥Ns1-K01.gpa")
  ((cmd 194) 0 ".ｱ.ｲ..ｳ...ｴ.....ｵ.......ｴ.....ｳ...ｲ..ｱ........")
  ((cmd 209) 1 3)
  ((cmd 204) 0 799)

; 	Text starts here...

  (text-frame 16 324 66 379)
  (text-reset 1)
  (text #:col 15 'br)
  (text "　　　　　　−") (str "The Black Cross Society") (text "−")
  ((cmd 195) 0 65535)
  (proc 16)
  (exec-mem 2816 "VIEW 50 154 63 242,OVER 1,PUT 8 50 154,FREE 8") ; 0074 appears
  (proc 10)
      ; 0074:
        (str "Black Nurse, you called on me?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Yes...You've done well. I've heard" 'br)
  (str "about your admirable performance in Ecuador.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "It was nothing of note, ma'am.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Wee-hee-hee! No need to be modest." 'br)
  (str "From here on out, the future of the Black Cross" 'br)
  (str "rests on your shoulders.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "You are too kind, madam. I have a long way to")
  (str "go.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Now then, about your next mission..." 'br)
  (str "Would you be willing to go to Japan?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Japan...!")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Oh, that's right! That's where you're" 'br)
  (str "from, isn't it?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Yes...yes, that's right.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Then this is a perfect state of" 'br)
  (str "affairs.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "What...what do you mean?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "You've been racking up a healthy share")
  (str "of paid vacation days, haven't you?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Erk! I'm sorry, I, uh") (text "−")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "No need to apologize. Your dedication" 'br)
  (str "to the cause shines through. But you do need to use")
  (str "that paid leave properly.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Uh, yes...")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Then how about this? Once your" 'br)
  (str "mission's complete, why not take a little vacation" 'br)
  (str "in Japan?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "You mean it?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "No.")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 10)
      ; 0074:
        (str "U...Understood... So, the mission?")
  ((cmd 195) 0 65535)
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Yes. Take a look...")
  ((cmd 195) 0 65535)
  (proc 16)
  ((cmd 197) 0 16)
  (exec-mem 6656 28 20 52 160) ; Minister shown on screen
  (proc 11)
      ; Black Nurse:
               (str "This man is Japan's Minister of" 'br)
  (str "Foreign Affairs, and he's caught up in quite the" 'br)
  (str "scandal.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Your mission is to silence him.")
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Silence him...")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "That's right. But you have yet to" 'br)
  (str "perform a...Procedure. Am I wrong?")
  (proc 16)
  (proc 10)
      ; 0074:
        (str "I'm sorry...")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "To become an A-Rank Nurse Commando," 'br)
  (str "the Procedure is an unavoidable hurdle.")
  (proc 16)
  (proc 10)
      ; 0074:
        (str "I understand...")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Wee-hee-hee... Carry out your mission" 'br)
  (str "successfully, and maybe you will get that vacation.")
  (proc 16)
  (proc 10)
      ; 0074:
        (str "Thank you, madam. I won't let you down.")
  (proc 16)
  (proc 11)
      ; Black Nurse:
               (str "Go get 'em, tigress. Off you go then!")
  (proc 16)
  (exec-mem 2816 "VIEW 39 153 63 297,OVER 0,PUT 1 39 153,FREE 1") ; Close-up on 0074
  (text-color 4)
  (str "Japan... If I can go there, I might be able to see" 'br)
  (str "my mother...")
  (proc 16)
  (set-reg 891 #t)
  (set-reg 892 #f)
  (set-reg 893 #f)
  (set-reg 894 #f)
  (set-reg 896 #f)
  (set-var B 1)
  (set-var C 1)
  ((cmd 209) 0 2)
  (exec-mem 2816 "EXIT")
  (sound '|| 2)
  (set-reg 990 #f)
  (mes-jump "b:¥mes¥NS11_01.mes")))
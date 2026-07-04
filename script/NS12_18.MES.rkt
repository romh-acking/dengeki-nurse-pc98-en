; Dengeki Nurse English Translation - NS12_18.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Finally, we face the cold Golgo 31. Cold, as in the ice cream. You get me.
; --To change for FMT:--
; Battle stuff...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
; PC-98
  (load-mem "cmd¥quakeh.tcm" 6656)
; FMT
; (branch-reg 941 (</> (/ (load-mem "cmd¥quakeh.tcm" 6656)
  (define-proc 10 (<> (text-color 5) (str "Golgo 31: ")))
  (define-proc 11 (<> (text-color 8) (str "Akiko: ")))

; 	The only cutaway here is a Kirara upskirt... but I guess I can stuff that into processes too

  (define-proc 9  (<> (exec-mem 2816 "GET 7 17 93 42 237")))
  (define-proc 12 (<> (exec-mem 2816 "VIEW 17 93 42 237")))
  (define-proc 13 (<> (exec-mem 2816 "PUT 6 17 93")))
  (define-proc 14 (<> (exec-mem 2816 "PUT 7 17 93,FREE 7")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_239.gpc") (image-mem 0 0) (exec-mem 2816 "GET 6 0 0 24 144")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_240.gpc") (image-mem 0 0) (exec-mem 2816 "GET 8 0 0 24 144")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V128E0M0")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_237.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_241.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_243.gpc,TEMP")
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
; PC-98
     (sound '|| "uso¥Nurse10.uso")
; FMT
;    (sound '|| "Nurse10.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥ns1_236.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 118 123)
  (proc 0)
      ; Dengeki Nurse:
                 (str "Golgo 31, I've found you! Prepare" 'br)
  (str "yourself!")
  (proc 15)
  (proc 10)
      ; Golgo 31:
            (str "Foolish maiden... Why rush into the arms")
  (str "of the reaper?")
  (proc 15)
  (proc 0)
      ; Dengeki Nurse:
                 (str "Spare me your drama, inconsolable" 'br)
  (str "pervert!")
  (proc 15)
  (proc 10)
      ; Golgo 31:
            (str "Pervert...? How that word pierces my" 'br)
  (str "heart.")
  (proc 15)
  (proc 10)
      ; Golgo 31:
            (str "Repeat it, and my M16 won't forgive you,")
  (str "even if I do.")
  (proc 15)
  (proc 0)
      ; Dengeki Nurse:
                 (str "I'll repeat it as much as I want," 'br)
  (str "you skeeze!!!") (repeat 9 (<> (str " Pervert!")))
  (proc 15)
  (proc 10)
      ; Golgo 31:
            (str "......")
  (proc 15)
  (proc 2)
      ; Tanchi:
           (str "Kiraraaaaaaa!")
  (proc 15)
  (proc 0)
      ; Dengeki Nurse:
                 (str "Stay back! This is too dangerous!")
  (proc 15)
  (proc 10)
      ; Golgo 31:
            (str "I hold no grudge against you, but this" 'br)
  (str "is business. Good luck... May you dream sweetly in")
  (str "your grave.")
  (proc 15)

; 	Un oh! Dodge that!

  (text-color 1)
  (sound '|| 0)
; PC-98
  (sound '|se | 25)
; FMT
; (sound '|se | 4)
  (text "ＢＡＭ！")
  (proc 15)
  (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
  (exec-mem 10752 "COPY> b:¥gpc¥ns1_237.gpc,GPC") (image-mem 1 3)
  (sound '|| 0)
; PC-98
  (sound '|se | 20)
; FMT
; (sound '|se | 9)
  (proc 0)
      ; Dengeki Nurse:
                (text "ＤＥＮＧＥＫＩ　ＪＵＵＵＭＰ！！！")
  (proc 15)
  (sound '|| 0)
; PC-98
  (sound '|se | 25)
; FMT
; (sound '|se | 4)
  (proc 2)
      ; Tanchi:
          (str "Ah, shit! Ta, Tanchi JUUUUMP!")
  (proc 15)
  (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse10.uso")
; FMT
; (sound '|| "Nurse10.fmt")
  (sound '|| 1)
  (proc 10)
      ; Golgo 31:
            (str "Playtime is over. I've got to wrap this" 'br)
  (str "up, or my ice cream will melt...")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 33)
  
; 	Dialogue trees defined here...

  (loop
; FMT
;  (branch-reg 941 (</> (/ (nop@)) (/ (set-var T 3) (set-var O 2) (seg-call))))
   (exec-mem 24576 1 1 0)
   (exec-mem 24576 3)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)
   (branch-var Z
    (</>
; Think
     (/
      (if (</>
           (// (? (= 120 #t))            (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 119 #t) (= 120 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 120 #t)
           (// (? (= 118 #t) (= 119 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 122 #t)
           (//                           (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 121 #t) (= 120 #t)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 123 #t)
           (//                           (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 121 #t)
; Talk
     (/
      (if (</>
           (// (? (= 122 #t))            (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 119 #t)
           (// (? (= 118 #t) (= 122 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                           (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 118 #t)
; Action
     (/
      (if (</>
           (// (? (= 123 #t))            (nop@) (set-var T 3) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥ns12_19.mes")
           (//                           (nop@) (set-var T 3) (set-var O 0) (seg-call)))))
; Move
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call))
; Save
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call))
; Unused
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))))))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))												; Think
   (proc 18)
   (text-color 7)
   (str "There's no time to mess around! Things are looking")
   (str "pretty grim here!!!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "If I let go of Kirara... I'll fall, won't I? Is" 'br)
   (str "Kirara aware of the laws of gravity!?")
   (proc 15)
   (proc 19)
   (set-reg 122 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I might break my leg... With a broken leg I can't" 'br)
   (str "walk, right?")
   (proc 15)
   (proc 19)
   (set-reg 120 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "What to do, what to do, what to do, what to do..." 'br)
   (str "This is bad, this is bad, this is bad...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (proc 9) (proc 12) (proc 13) ; Tanchi looks up
   (proc 2)
       ; Tanchi:
           (str "Arrgh, if I look down I'll get vertigo," 'br)
   (str "and if I look up I'll get a nosebleed!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "So don't look up!")
   (proc 15)
   (proc 12) (proc 14) ; Tanchi stops looking up
   (proc 19)
   (set-reg 121 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "If I fall from this height... Let's see, I'm 57kg,")
   (str "so my velocity will be...")
   (proc 15)
   (text-color 7)
   (proc 9) (proc 12) (proc 13) ; Tanchi looks up
   (str "No good! I can't do math when I've got vertigo!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I told you to stop looking up!!")
   (proc 15)
   (proc 12) (proc 14) ; Tanchi stops looking up
   (proc 19)
   (set-reg 123 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Hey, let go of my legs! I can't" 'br)
   (str "fight him like this!")
   (proc 15)
   (proc 19)
   (set-reg 118 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "If I let go, I'll fall! ")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Come on, you'll just break your" 'br)
   (str "leg!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "E-Er...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Would you rather die than have a" 'br)
   (str "broken leg?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "I don't want either!")
   (proc 15)
   (proc 19)
   (set-reg 119 #t))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "There's no way I can touch Kirara's butt from" 'br)
   (str "here...")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "No... There's no other way... Before the" 'br)
   (str "inevitable, I'll look up one last time...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Let go already!!")
   (proc 15)
   (text-color 1)
   (sound '|| 0)
   (str "Plop!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Aaaaargh!")
   (proc 15)
   (proc 11)
       ; Akiko:
          (str "Ohhh, my darling!")
   (proc 15)

   (proc 12) (exec-mem 2816 "PUT 8 17 93,FREE 8") (exec-mem 6656 1 0 1 3 0)
; ^ Tanchi lands on Akiko.

   (text-color 1)
   (text "ＴＨＵＭＰ！")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Uhhhh...")
   (proc 15)
   (proc 11)
       ; Akiko:
          (str "Ohhh....")
   (proc 15)

; 	Dengeki Nurse takes the opportunity to give Golgo 31 a good...

   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_241.gpc,GPC") (image-mem 1 3)
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)
; PC-98
   (sound '|se | 20)
; FMT
;  (sound '|se | 10)
   (exec-mem 6656 1 0 1 3 0)

; 	A good...

   (proc 0)
       ; Dengeki Nurse:
                  (text "ＤＥＮＧＥＫＩ　ＫＩＩＩＣＫ！")
   (proc 15)
   (proc 10)
       ; Golgo 31:
             (str "Uwaaaagh!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Prepare yourself, Golgo 31!")
   (proc 15)
   (proc 10)
       ; Golgo 31:
             (str "Don't... Don't do that, now... I'm not" 'br)
   (str "paid enough to take this on...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "For a guy, you're being way too" 'br)
   (str "picky!")
   (proc 15)
   (proc 10)
       ; Golgo 31:
             (str "Very well...such is the curse of being" 'br)
   (str "The Professional...")
   (proc 15)

; 	Battle time!

   (exec-mem 2816 "EXIT")
   (exec-mem 10752 "EXIT")
   (set-var U 6)
; PC-98
   (mes-load? "mes¥action1.mes")

; FMT
;  (sound '|| 2) (mes-jump "mes¥action06.mes")) (seg (? (= T 3) (= O 2)) (nop@) (set-reg 941 #f) (set-reg 311 #f)

   (image-file "gpc¥aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0 0)
   (image-file "b:¥gpc¥ns1_243.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 1 0)
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse11.uso")
; FMT
;  (sound '|| "Nurse11.fmt") (sound '|| 100)
   (sound '|| 1)
   (text-frame 3 324 52 379)
   (text-reset 15)
; PC-98
   (exec-mem 6656 8)
; FMT
;  (exec-mem 17920 0 1)

; 	Text continues!

   (proc 0)
       ; Dengeki Nurse:
                  (str "It's all over... Peace will finally")
   (str "return to the academy.")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "But mine is far from over...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Until the Black Cross is destroyed,")
   (str "this empty battle will never end.")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "But until then... Until then... I" 'br)
   (str "mustn't ever cry...isn't that right, mother?")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Someday, someday, surely...we'll" 'br)
   (str "meet again...")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_19.mes"))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "But if I move, I'll fall!!!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
   (define-proc 10 (<> (text-color 5) (str "Golgo 31: ")))
   (define-proc 11 (<> (text-color 8) (str "Akiko: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))
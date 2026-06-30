; Dengeki Nurse English Translation - NS13_13.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Let's go surfing!
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 30 288 10 96") (proc 4) (text-color 8) (str "Johnny: ")))
  (define-proc 11 (<> (proc 1) (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2") (text-color 3) (str "Magenta: ")))

; 	Character portraits:

  (define-proc 12 (<> (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4))) ; Angry
  (define-proc 13 (<> (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4))) ; Shocked
  (define-proc 14 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting

; 	Magenta portrait:

  (define-proc 1 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 70 192 10 96"))) ; Display
  (define-proc 9 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1"))) ; Clear

; 	Setup continues...

; FMT
; (branch-reg 941 (</> (/

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399)
  (text-reset 1)
  (image-file "b:¥gpc¥Ns1_335.gpc") (image-mem 0 0) (exec-mem 2816 "GET 10 4 108 48 196")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
; PC-98
     (sound '|| "uso¥Nurse12.uso")
; FMT
;    (sound '|| "Nurse12.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥Ns1_334.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 105 112)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "Summer! The sea, the sun! It's the season of" 'br)
  (str "romance and marine sports!")
  (proc 15)
  (text-color 7)
  (str "But there's no time for messing around...")
  (proc 15)
  (text-color 7)
  (str "We're chasing after Johnny Nakamura!")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 23)
; FMT
; ) (/ (nop@))))
  
; 	Dialogue trees defined here...

  (loop
; FMT
;  (if (</> (// (? (= 941 #t) (= 942 #f)) (nop@) (set-var T 2) (set-var O 5) (seg-call)) (// (? (= 941 #t) (= 942 #t)) (nop@) (set-var T 2) (set-var O 6) (seg-call))))

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
           (// (? (= 108 #t))                       (nop@) (set-var T 0) (set-var O 3) (seg-call))    ; (set-reg 112 #t)
           (// (? (= 107 #t) (= 108 #f))            (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 105 #t) (= 106 #t) (= 107 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 110 #t)
           (//                                      (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 106 #t)
; Look
     (/
      (if (</>
           (// (? (= 108 #t))                       (nop@) (set-var T 1) (set-var O 3) (seg-call))
           (// (? (= 107 #t) (= 108 #f))            (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 109 #t) (= 107 #f))            (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 107 #t)
           (//                                      (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 111 #t) (= 112 #t))            (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (mes-jump "b:¥mes¥ns13_14.mes")
           (// (? (= 108 #t))                       (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 111 #t)
           (// (? (= 107 #t) (= 108 #f))            (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 108 #t) -> (mes-load? "mes¥action1.mes")
           (// (? (= 110 #t) (= 107 #f))            (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 109 #t)
           (//                                      (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 105 #t)
; Action
     (/
      (if (</>
           (// (? (= 108 #t))                       (nop@) (set-var T 3) (set-var O 1) (seg-call))
           (//                                      (nop@) (set-var T 3) (set-var O 0) (seg-call)))))
; Move
     (/
      (if (</>
           (// (? (= 108 #t))                       (nop@) (set-var T 4) (set-var O 1) (seg-call))
           (//                                      (nop@) (set-var T 4) (set-var O 0) (seg-call)))))
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
   (str "Kirara's really laying on the throttle. Jetskis" 'br)
   (str "can be dangerous...")
   (proc 15)
   (proc 19)
   (set-reg 106 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Anyway, the key is not to panic. If we get into an")
   (str "accident, it's all over for us...")
   (proc 15)
   (proc 19)
   (set-reg 110 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Okay! No matter what, we're getting that video" 'br)
   (str "back!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Dammit, Kirara! Forget about me and take down that")
   (str "skeeze!")
   (proc 15)
   (proc 19)
   (set-reg 112 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Ahh, the sea is vast!")
   (proc 15)
   (text-color 7)
   (str "I can't see 'em anywhere...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Wait! That, over there...!")
   (proc 15)

   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse10.uso")
; FMT
;  (sound '|| "Nurse10.fmt") (sound '|| 100)
   (sound '|| 1)
   (exec-mem 2816 "VIEW 4 108 51 303,OVER 1,PUT 10 4 108,FREE 10")
; ^ Who's that in the foreground!?!?!

   (proc 2)
       ; Tanchi:
           (str "Kirara! It's them!")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Hold it right there, Johnny" 'br)
   (str "Nakamura! Hand over that videotape!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 10)
       ; Johnny:
           (str "Ehhh!? Insolent little girl, it's time you")
   (str "tapped out already!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 11)
       ; Magenta:
            (str "Yeah! Once we deliver the video, I'll be" 'br)
   (str "punishing you a second time at my leisure, so just")
   (str "you wait!")
   (proc 15)
   (proc 9) ; Clear right portrait
   (proc 19)
   (set-reg 107 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Johnny and Magenta are straight ahead of us, and" 'br)
   (str "Johnny's got his hands on the videotape!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Geez, I wish he wouldn't go and hold that blade up")
   (str "to me!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara!! Driving that thing fast is super" 'br)
   (str "dangerous!")
   (proc 15)
   (proc 13) ; Portrait (Shocked)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Come on, it's not like I know how" 'br)
   (str "to drive this in the first place!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 105 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Anyway, don't panic! Stay calm!")
   (proc 15)
   (proc 12) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I can't stay calm!! What if someone")
   (str "actually sees that video!?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 109 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Stop messing around! Drop that video and" 'br)
   (str "go back to California or wherever!")
   (proc 15)
   (proc 10)
       ; Johnny:
           (str "This train ain't stoppin', baby! Magenta!" 'br)
   (str "Punishment time!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 11)
       ; Magenta:
            (str "Ho ho, that's more like it! Come on" 'br)
   (str "Dengeki Nurse, let's rumble!")
   (proc 15)
   (proc 9) ; Clear right portrait
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Ohh, you're gonna get it!")
   (proc 15)

; 	Battle 1 time

   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-var U 9)
; PC-98
   (mes-load? "mes¥action1.mes")
; FMT
;  (mes-jump "mes¥action09.mes")) (seg (? (= T 2) (= O 5) (= 942 #f)) (nop@) (set-reg 941 #f) (set-reg 942 #t) (set-reg 311 #f)

; 	Battle 1 over...

   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (text-frame 0 0 79 399)
   (text-reset 0)
   (image-file "b:¥gpc¥ns1_337.gpc") (image-mem 0 0) (exec-mem 2816 "GET 8 0 0 24 144")
   (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
   (exec-mem 2816 "ACCESS 0")
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse10.uso")
; FMT
;  (sound '|| "Nurse10.fmt") (sound '|| 100)
   (sound '|| 1)
   (image-file "gpc¥aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0 0)
   (image-file "b:¥gpc¥ns1_336.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 1 0)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (exec-mem 17920 0 1)
   (exec-mem 6656 8)

; 	Text continues

   (proc 10)
       ; Johnny:
           (str "Impressive...for a little girl! But this" 'br)
   (str "is the end of the line! Move, and this dude's" 'br)
   (str "history!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "L-Let me go!")
   (proc 15)
   (proc 13) ; Portrait (Shocked)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Tanchi! What's going on!?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "S-Sorry... I just wanted to get the video" 'br)
   (str "back...")
   (proc 15)
   (proc 10)
       ; Johnny:
           (str "Wahahhha! Now, Dengeki Nurse! Prepare for" 'br)
   (str "punishment!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 108 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara, don't worry about me! Just zap" 'br)
   (str "this fool!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 70 0 10 96") (proc 4) ; Portrait (Flushed)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You... You say that, but...")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 10)
       ; Johnny:
           (str "Hah! Expected of a Japanese maiden. She'll")
   (str "take the punishment for the man she loves!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 12) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "......")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 111 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara! You gotta fight back!")
   (proc 15)

   (sound '|| 0)
; PC-98
   (sound '|se | 20)
; FMT
;  (sound '|se | 12)
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 8 16 93,FREE 8")
; ^ Bonk!

   (text-color 5)
   (str "Surfer Lady: It's the legendary BIIIIG WAAAAAAAVE!")
   (proc 15)

   (sound '|| 0)
; PC-98
   (sound '|se | 24)
; FMT
;  (sound '|se | 6)

   (text-color 1)
   (text "ＢＯＮＫ！！")
   (proc 15)
   (proc 10)
       ; Johnny:
           (str "Waaaaaaaaaaugh!!!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "What what WHAAAAAT?")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (sound '|| 0)
   (sound '|se | 20)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Now's my chance! Eat this!" 'br)
   (str "PLASMA FLAAAASH!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 10)
       ; Johnny:
           (str "As if, insolent girl! Hyaaaaa, Muramasa" 'br)
   (str "will taste your blood!")
   (proc 15)
   (proc 6) ; Clear left portrait

   (define-proc 1 (<> (text-color 4) (str "Kirara: ")))
; ^ Reinstating default process

   (exec-mem 2816 "EXIT")
   (set-var U 10)

; PC-98
   (mes-load? "mes¥action1.mes") (text-frame 3 324 52 379) (text-reset 15) (text-frame 4 16 51 303)  (text-reset 15) (set-reg 990 #f) (mes-jump "b:¥mes¥ns13_14.mes")
; FMT
;  (mes-jump "mes¥action10.mes")
   )
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Out on the ocean, I can't really touch her butt...")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (proc 10)
       ; Johnny:
           (str "Hi-yahh! Stop struggling!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We're really cutting through the waves now!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 1))
   (proc 18)
   (proc 10)
       ; Johnny:
           (str "If you try anything stupid, you won't live")
   (str "to regret it!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 8) (str "Johnny: ")))
;  (define-proc 11 (<> (text-color 3) (str "Magenta: ")))
   (proc 19)
   (set-var B 3)
   (set-var C 3)))
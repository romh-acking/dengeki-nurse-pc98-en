; Dengeki Nurse English Translation - NS15_13.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; 
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 0 0 10 96")  (proc 4))) ; Smiling
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (sound '|| "uso¥Nurse09.uso")
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_521.gpc")
  (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 73 77)
  ((cmd 209) 1 2)
  (proc 2)
          (str "Argh... This isn't ideal!!!")
  (proc 15)
  (proc 3)
  (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
  (proc 4)
  (proc 1)
          (str "Can't be helped, it's a one-seater!")
  (proc 15)
  (proc 6)
  (proc 19)
  (exec-mem 18944 65535 528 33)
  
; 	Dialogue trees defined here...

  (loop
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
           (// (? (= 74 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 73 #t) (= 74 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 75 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 75 #t))           (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 77 #t) (= 75 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 74 #t) (= 77 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 76 #t) (= 74 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
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
   (str "Why isn't it built for two? This is a critical" 'br)
   (str "design flaw, Doc!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "We were on our way to fight Black Nurse, and yet I")
   (str "felt no fear. But what about Kirara...?")
   (proc 15)
   (proc 19)
   (set-reg 76 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "That must be it... It's because I'm with Kirara." 'br)
   (str "If we're together, nothing is scary!")
   (proc 15)
   (text-color 7)
   (str "But... Kirara must be worried sick about her mom.")
   (proc 15)
   (proc 19)
   (set-reg 77 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Blue skies and green mountains. The wind is" 'br)
   (str "calm... It doesn't exactly match us storming into" 'br)
   (str "battle.")
   (proc 15)
   (text-color 7)
   (str "The calm before the storm...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I look down.")
   (proc 15)
   (text-color 7)
   (str "A castle rises from the greenery!")
   (proc 15)
   (proc 2)
           (str "Kirara! Is that it?")
   (proc 15)
   (sound '|| 0)
   (proc 3)
   (exec-mem 2816 "GET 2 40 0 10 96") ; Shocked
   (proc 4)
   (proc 1)
           (str "Ah! That's...")
   (proc 15)
   ((cmd 209) 0 2)
   (proc 6)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   ((cmd 206) 1 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_14.mes"))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
           (str "Damn! We aren't near to Elektros yet?")
   (proc 15)
   (proc 11)	; Confused
   (proc 1)
           (str "We should almost be there...")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 73 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
           (str "Kirara, aren't you scared?")
   (proc 15)
   (proc 11)	; Confused
   (proc 1)
           (str "I don't have a problem with heights.")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "No, I mean fighting Black Nurse!")
   (proc 15)
   (proc 10)	; Smiling
   (proc 1)
           (str "She's the head of the Black Cross Society,")
   (str "so I might not be able to beat her...")
   (proc 15)
   (proc 6)
   (proc 1)
           (str "But... But...")
   (proc 15)
   (proc 2)
           (str "But what?")
   (proc 15)
   (proc 10)	; Smiling
   (proc 1)
           (str "Because you came with me, Tanchi... I'm" 'br)
   (str "not scared.")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Kirara...")
   (proc 15)
   (proc 19)
   (set-reg 74 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 10)	; Smiling
   (proc 1)
           (str "If I'm with you, I bet we can even beat" 'br)
   (str "Black Nurse.")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
           (str "I hope your mother is safe too.")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 20 0 10 96") ; Sad
   (proc 4)
   (proc 1)
           (str "......")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "S-sorry... That came out kind of weird.")
   (proc 15)
   (proc 10)	; Smiling
   (proc 1)
           (str "No... Thank you for worrying about her.")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 75 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 10)	; Smiling
   (proc 1)
           (str "It's fine, I'm sure my mom is okay!")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 3)
   (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
   (proc 4)
   (proc 1)
           (str "Hey, stop wiggling around! What if we" 'br)
   (str "fall?")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We're on our way towards the fallen kingdom of" 'br)
   (str "Elektros.")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212))))) <- FMT
   (proc 19)
   (set-var B 5)
   (set-var C 5)))
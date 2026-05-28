; Dengeki Nurse English Translation - NS12_08.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; A disguised Tanchi and Kirara infiltrate Akiko's Physics class.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥quakeh.tcm" 6656)
  (define-proc 10 (<> (text-color 8) (str "Akiko: ")))

; 	Similar situation to NS12_03, putting unique portrait code in these procs

  (define-proc 11 (<> (exec-mem 2816 "GET 1 5 23 10 96,VIEW 5 23 15 120"))) ; Display code
  (define-proc 12 (<> (exec-mem 2816 "PUT 4 5 23")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "b:¥gpc¥ns1_218.gpc") (image-mem 0 0) (exec-mem 2816 "GET 14 0 0 24 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "GET 2 30 0 10 96")
  (exec-mem 2816 "GET 4 50 0 10 96")
  (exec-mem 2816 "ACCESS 0")
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
     (sound '|| "uso¥Nurse09.uso") ; <- PC-98
;    (sound '|| "Nurse09.fmt")       <- FMT
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥ns1_217.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 55 60)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 10)
         (str "When this X-curve makes an upward slope...")
  (proc 15)
  (proc 10)
         (str "If external pressure K is applied, the X-" 'br)
  (str "curve is destroyed without mercy!")
  (proc 15)
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
           (// (? (= 55 #t))                     (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 56 #t) (= 57 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 60 #t))                     (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 58 #t) (= 59 #t) (= 60 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
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
   (str "It's oddly quiet... My high school classes were" 'br)
   (str "always a noisy racket. So is this what a proper," 'br)
   (str "refined girl's school is like?")
   (proc 15)
   (proc 19)
   (set-reg 59 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I'm wondering about that paper fan of hers. Does" 'br)
   (str "it really suit her...?")
   (proc 15)
   (proc 19)
   (set-reg 60 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Nothing out of the ordinary at the moment...")
   (proc 15)
   (text-color 7)
   (str "Aside from her lecturing in that bright red dress.")
   (str "Where there's weird smoke, there's weird fire...")
   (proc 15)
   (proc 19)
   (set-reg 56 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "You know what's weird to me?")
   (proc 15)
   (text-color 7)
   (str "That big fan. Then again, my teachers used to pack")
   (str "bamboo swords, so maybe it's not weird that she's" 'br)
   (str "armed...")
   (proc 15)
   (proc 19)
   (set-reg 55 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 11) (proc 12)
   (proc 1)
           (str "This is all really confusing... I don't" 'br)
   (str "get any of this...")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Hey, you're actually taking this lecture" 'br)
   (str "seriously?")
   (proc 15)
   (proc 19)
   (set-reg 58 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 11) (proc 12)
   (proc 1)
           (str "Well, everyone else is!")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Everyone else is terrified, more likely." 'br)
   (str "You could hear a pin drop.")
   (proc 15)
   (proc 19)
   (set-reg 57 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
           (str "Maybe they're afraid of the giant fan...?")
   (proc 15)
   (proc 11) (proc 12)
   (proc 1)
           (str "It looks normal to me.")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "You never know, it could be made of Super-")
   (str "Alloy Z...")
   (proc 15)
   (proc 10)
          (str "Hey! You two! Just what do you think you're")
   (str "doing, talking during MY class!")
   (proc 15)
   (proc 2)
           (str "Ack, sorry...")
   (proc 15)
   (proc 10)
          (str "Discipline! Discipline Committee!!")
   (proc 15)
   (text-color 1)
   (sound '|| 0)
   (str "Slam!")
   (proc 15)
   (exec-mem 2816 "VIEW 27 152 51 296,PUT 14 27 152,FREE 14")
   (proc 2)
           (str "Aw, not them again!")
   (proc 15)
   (proc 10)
          (str "Take these two to the Reflection Cell!")
   (proc 15)
   (proc 11)
   (exec-mem 2816 "PUT 2 5 23")
   (proc 1)
           (str "Noooo! Lemme go!")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Kirara, let's see how this plays out so we")
   (str "can figure out what this Reflection Cell is!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_09.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1)
   (str "Rub rub rub...")
   (proc 15)
   (proc 11) (proc 12)
   (proc 1)
           (str "What are you doing?")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Oh, um, nothing... My legs poking out from")
   (str "under the skirt are cute...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 10)
          (str "Just where do you think you're going!?")
   (proc 15)
   (proc 2)
           (str "Oh, um... I gotta go pee?")
   (proc 15)
   (proc 10)
          (str "Hold it until the break, then!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 8) (str "Akiko: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))
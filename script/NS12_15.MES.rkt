; Dengeki Nurse English Translation - NS12_15.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dengeki Nurse and Tanchi catch up with Akiko, who seems shaken by the threat on her life...
; --To change for FMT:--
; Battle stuff...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 8) (str "Akiko: ")))
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse09.uso")
; FMT
; (sound '|| "Nurse09.fmt") (sound '|| 100)
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc")
; PC-98
  (image-mem 1 3)
; FMT
; (image-mem 0 0)
  (image-file "b:¥gpc¥ns1_228.gpc")
; PC-98
  (image-mem 1 3)
; FMT
; (image-mem 1 0)
; PC-98
  ((cmd 209) 1 2) (text-frame 3 324 52 379) (text-reset 15) (exec-mem 6656 8)
; FMT
; (branch-reg 311 (</> (/ ((cmd 209) 1 2)) (/ (exec-mem 17920 0 1) (set-reg 311 #f) (set-reg 941 #f))))
  ((cmd 204) 104 114)
; FMT
; (text-frame 3 324 52 379) (text-reset 15)

; 	Intro begins here...

  (proc 2)
      ; Tanchi:
          (str "Kirara, are you okay!?")
  (proc 15)
  (proc 0)
      ; Dengeki Nurse:
                 (str "Thanks, I'm still intact. But what" 'br)
  (str "about Ms. Akiko? Did she get hurt?")
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
           (// (? (= 108 #t))            (nop@) (set-var T 0) (set-var O 5) (seg-call))    ; (set-reg 114 #t)
           (// (? (= 107 #t) (= 108 #f)) (nop@) (set-var T 0) (set-var O 4) (seg-call))    ; (set-reg 113 #t)
           (// (? (= 106 #t) (= 107 #f)) (nop@) (set-var T 0) (set-var O 3) (seg-call))    ; (set-reg 112 #t)
           (// (? (= 105 #t) (= 106 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 111 #t)
           (// (? (= 104 #t) (= 105 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 110 #t)
           (//                           (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 107 #t))            (nop@) (set-var T 1) (set-var O 3) (seg-call))
           (// (? (= 106 #t) (= 107 #f)) (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 109 #t) (= 106 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 105 #t)
           (//                           (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 114 #t))            (nop@) (set-var T 2) (set-var O 7) (seg-call))    ; (mes-jump "b:¥mes¥ns12_16.mes")
           (// (? (= 108 #t) (= 114 #f)) (nop@) (set-var T 2) (set-var O 6) (seg-call))
           (// (? (= 113 #t) (= 108 #f)) (nop@) (set-var T 2) (set-var O 5) (seg-call))    ; (set-reg 108 #t)
           (// (? (= 107 #t) (= 113 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 112 #t) (= 107 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 107 #t)
           (// (? (= 105 #t) (= 112 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 106 #t)
           (// (? (= 110 #t) (= 105 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 109 #t)
           (//                           (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 104 #t)
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
   (str "Eesh, we survived by the skin of our teeth there.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "What exactly are Akiko's ambitions? Asuka was" 'br)
   (str "mentioning world conquest...")
   (proc 15)
   (proc 19)
   (set-reg 110 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "The basic workings of nuclear bombs are relatively")
   (str "simple, actually! But I'm not gonna explain it to" 'br)
   (str "you now.")
   (proc 15)
   (proc 19)
   (set-reg 111 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "This is a grave matter for all of humanity! We've" 'br)
   (str "gotta get to the bottom of this!")
   (proc 15)
   (proc 19)
   (set-reg 112 #t))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "But why in the heck... Why would she do something" 'br)
   (str "like set up the Discipline Committee, or the" 'br)
   (str "Reflection Cell...?")
   (proc 15)
   (proc 19)
   (set-reg 113 #t))
 (seg (? (= T 0) (= O 5))
   (proc 18)
   (text-color 7)
   (str "It's like she had her own cat bite her...")
   (proc 15)
   (text-color 7)
   (str "But! But! Butt!! Butt!!!")
   (proc 15)
   (text-color 7)
   (str "If Akiko's planning on taking over the world, we" 'br)
   (str "can't just let her do it...")
   (proc 15)
   (proc 19)
   (set-reg 114 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This is Akiko's room in the Cybernetic High School")
   (str "staff dorm. Right now it's just me, Kirara, and" 'br)
   (str "Akiko inside.")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I take a look at Akiko's desk. The diagram from" 'br)
   (str "before is there.")
   (proc 15)
   (text-color 7)
   (str "This... This is...")
   (proc 15)
   (text-color 7)
   (str "These are the blueprints for a nuclear bomb!")
   (proc 15)
   (proc 19)
   (set-reg 105 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Akiko silently lowers her head...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Tears are welling up in Akiko's eyes... She's" 'br)
   (str "starting to sniffle...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Ms. Akiko, are you okay?")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "Y-Yes...")
   (proc 15)
   (proc 19)
   (set-reg 104 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Hey, do you think you could explain all" 'br)
   (str "that talk about world domination to us?")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "......")
   (proc 15)
   (proc 19)
   (set-reg 109 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Aren't these atomic bomb schematics!? What")
   (str "were you thinking!?")
   (proc 15)
   (sound '|| 0)
   (proc 3)
   (exec-mem 2816 "GET 2 40 0 10 96") ; Shocked
   (proc 4)
   (proc 0)
       ; Dengeki Nurse:
                  (str "AN ATOMIC BOMB!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 10)
       ; Akiko:
          (str "......")
   (proc 15)
   (proc 19)
   (set-reg 106 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Akiko...we aren't your enemies. You need" 'br)
   (str "to level with us.")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Are you really planning on world" 'br)
   (str "domination?")
   (proc 15)
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse11.uso")
; FMT
;  (sound '|| "Nurse11.fmt")
   (sound '|| 1)
   (proc 10)
       ; Akiko:
          (str "From elementary school to college, I was" 'br)
   (str "always quiet, and very reserved...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "I'd watch as boys would fawn over girls who")
   (str "were prettier or curvier than me...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "And I would... I would just watch, just sit")
   (str "and watch from afar...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "I was... I was a wallflower! I was a good" 'br)
   (str "girl who only knew how to study!")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "So I thought I'd use my brilliant mind...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "To make all the men of the world bow at my" 'br)
   (str "feet! I would make them call me Queen!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "That sure is a reason to build an atomic" 'br)
   (str "bomb...")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4) ; Portrait (Sad)
   (proc 0)
       ; Dengeki Nurse:
                  (str "That's kind of sad...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 107 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 10)
       ; Akiko:
          (str "I'm sorry... Sniff, sniff... Snort...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "So forming the Discipline Committee and" 'br)
   (str "building the Reflection Cell, were those part of" 'br)
   (str "your world domination plans?")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "For my ambitions to be realized...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "I had to take control of the school and its")
   (str "abundant funding...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "The discipliners were my soldiers, and the" 'br)
   (str "Reflection Cell was a symbol of that power...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "But it didn't work out, did it...")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "...")
   (proc 15)
   (proc 19)
   (set-reg 108 #t))
 (seg (? (= T 2) (= O 6))
   (proc 18)
   (proc 10)
       ; Akiko:
          (str "I'm sorry...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 7))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "So Akiko, are you still thinking of world" 'br)
   (str "domination?")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "......")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "The shy and reserved Akiko is in the past,")
   (str "you're an assertive person now!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "That's right, you've become a real" 'br)
   (str "go-getter!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Give yourself some credit, Akiko. You've" 'br)
   (str "got plenty of looks, you know!")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "Thank you... I feel like I've woken up from")
   (str "a dream...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "So no more building scary dangerous")
   (str "nuclear bombs, okay?")
   (proc 15)
   (proc 10)
       ; Akiko:
          (str "O-Okay... Thank you so much, both of you...")
   (proc 15)
   ((cmd 209) 0 2)
   (exec-mem 2816 "EXIT")
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_16.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 10)
       ; Akiko:
          (str "I'm sorry... Please don't open the drawer" 'br)
   (str "without permission.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Oops, okay... Your taste in underwear is" 'br)
   (str "pretty modest though, just by the way.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "No need to rush, now that the fight's over. Maybe" 'br)
   (str "we can stop to have a little conversation over" 'br)
   (str "tea.")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (define-proc 10 (<> (text-color 8) (str "Akiko: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))
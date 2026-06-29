; Dengeki Nurse English Translation - NS12_00.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; It's a new day at the Dentendo Hospital, as our heroes scarf down lunch.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 9  (<> (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4))) ; Happy
  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused

; Dr. Akiba has his own set of display coordinates...
  (define-proc 11 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1")))
  (define-proc 12 (<> (exec-mem 2816 "GET 2 10 192 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
; ^ Display portrait
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1"))) ; Clear Kirara portrait

; 	Episode title sequence setup

  (text-frame 0 0 79 399)
  (text-reset 15)
  (image-file "gpc¥Seki10.gpc") (image-mem 1 3)
; PC-98
  (sound '|| 0) (sound '|| "uso¥Nurse01a.uso") (sound '|| 1)
; FMT
; (sound '|se | "MUS¥NRS_ADV.SE")              (sound '|| 100)
  ((cmd 209) 1 5)
  (exec-file "APPEARH.CMD b:¥gpc¥2WA.gpc,6,105,73,248,4,1,1")
; FMT
; (sound '|se | 5)
  (delay 150 0)
  ((cmd 209) 0 5)

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse08.uso")
; FMT
; (sound '|| "Nurse08.fmt")
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc")   (image-mem 1 3)
  (image-file "gpc¥ns1_k10.gpc")    (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_201.gpc") (image-mem 1 3)
  (exec-mem 18944 1 19200)
  ((cmd 204) 0 799)
  ((cmd 209) 1 2)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text #:col 1 'br)
  (text "　　　−") (str "Dentendo Hospital Staff Cafeteria") (text "−")
  (proc 15)
  (set-reg 891 #f)
  (set-reg 892 #t)
  (set-reg 893 #f)
  (set-reg 894 #f)
  (set-reg 897 #f)
  (set-var B 2)
  (set-var C 2)
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
           (// (? (= 11 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 10 #t) (= 11 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 13 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 12 #t)
; Look
     (/
      (if (</>
           (// (? (= 11 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 15 #t)
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 15 #t))           (nop@) (set-var T 2) (set-var O 5) (seg-call))    ; (mes-jump "b:¥mes¥ns12_01.mes")
           (// (? (= 11 #t) (= 15 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 13 #t) (= 11 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 11 #t)
           (// (? (= 10 #t) (= 13 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 12 #t) (= 10 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 10 #t)
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
   (str "Wahaha, today's the day! The one time every year" 'br)
   (str "I can truly say,") (text "“") (str "I'm glad I became a doctor!") (text "”")
   (proc 15)
   (text-color 7)
   (str "Wahahahhahaa!")
   (proc 15)
   (text-color 7)
   (str "Ohohohoho!")
   (proc 15)
   (text-color 7)
   (str "I can't stop giggling!")
   (proc 15)
   (proc 19)
   (set-reg 12 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "This is a feeling little girls and children cannot")
   (str "grasp! The fresh fruit...of high school girls!" 'br)
   (str "Ehehehe, I can't stop grinning...")
   (proc 15)
   (proc 19)
   (set-reg 13 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I have to prep for tomorrow, I'm going to bed" 'br)
   (str "early! No watching videos or playing games for me" 'br)
   (str "tonight!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This is the Dentendo staff cafeteria. I'm having" 'br)
   (str "the A lunch, Kirara is doing B, and the professor" 'br)
   (str "is eating katsudon.")
   (proc 15)
   (text-color 7)
   (str "Kirara seems to be having trouble with the" 'br)
   (str "chopsticks. Maybe it's because she spent so much" 'br)
   (str "time abroad...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Hm, I don't recognize the girl at that table over" 'br)
   (str "there...")
   (proc 15)
   (proc 19)
   (set-reg 15 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "I'm counting on you tomorrow.")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 2)
       ; Tanchi:
           (str "Yeah, yeah, I know, munch munch...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 9) ; Kirara portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "What have you been so giddy about all this")
   (str "time?")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "It's a seeeecret!")
   (proc 15)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Tomorrow we're going to the Cybernetic" 'br)
   (str "Girls' School for physical examinations.")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 10) ; Kirara portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Is that any fun?")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Well, we're talking about fresh, sparkling")
   (str "high school girls here! And they come from the" 'br)
   (str "prestigious Cybernetic Girls' School!")
   (proc 15)
   (proc 10) ; Kirara portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "???")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 19)
   (set-reg 10 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 10) ; Kirara portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "I... I don't get it.")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Ah, you don't need to, Kirara!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 9) ; Kirara portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "W-What is with the creepy smirk?")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Hey, don't judge me!")
   (proc 15)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Ha ha! Kirara, you're coming too.")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 9) ; Kirara portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "Great! I can't wait!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Now, what does a girl like you have to get")
   (str "excited about?")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4) ; Kirara portrait (Sad)
   (proc 1)
       ; Kirara:
           (str "Well, I've never been to a normal school" 'br)
   (str "before...")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "It's fine... I'd like to do a physical" 'br)
   (str "exam at least once myself.")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 2)
       ; Tanchi:
           (str "No way! You're a surgeon, Doc. This is an" 'br)
   (str "internal med perk!")
   (proc 15)
   (proc 19)
   (set-reg 11 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "What if we switched departments for" 'br)
   (str "just one day?")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 2)
       ; Tanchi:
           (str "Forget it!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Who's that girl at the other table?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Hmm. She's an unfamiliar face, isn't she?")
   (proc 15)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Oh, that's Croco-chan, a new nurse in" 'br)
   (str "the Surgery department.")
   (proc 15)
   (proc 14) ; Clear Dr. Akiba portrait
   (proc 2)
       ; Tanchi:
           (str "She's a bit of an odd bird, isn't she?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Her clothing choices are quite stylish.")
   (proc 15)
   (proc 11) (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "As a nurse, she has a bit to learn, but")
   (str "she's not a bad kid.")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_01.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Er, breaking into dance while eating would be" 'br)
   (str "vulgar.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I'm not gonna leave the table before I'm done" 'br)
   (str "eating!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 2)
   (set-var C 2)))
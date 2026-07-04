; Dengeki Nurse English Translation - NS14_00.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Once again we join our heroes in the staff cafeteria...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥scrh.tcm" 28672)
; (define-proc 10 (<> (text-color 11) (str "Croco: "))) <--- Only used once

; 	Character portraits:

  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused

; 	Dr. Akiba portrait:

  (define-proc 12 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 10 192 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")))

; 	Episode title sequence setup

  (text-frame 0 0 79 399)
  (text-reset 15)
  (image-file "gpc¥Seki10.gpc") (image-mem 1 3)
; PC-98
  (sound '|| 0) (sound '|| "uso¥Nurse01a.uso") (sound '|| 1)
; FMT
; (sound '|se | "MUS¥NRS_ADV.SE")              (sound '|| 100)
  ((cmd 209) 1 5)
  (exec-file "APPEARH.CMD b:¥gpc¥4WA.gpc,3,104,76,247,4,1,1")
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
  (image-file "b:¥gpc¥ns1_401.gpc") (image-mem 1 3)
  (exec-mem 18944 1 19200)
  ((cmd 204) 0 799)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  (text #:col 1 'br)
  (text "　　　−") (str "Dentendo Hospital Staff Cafeteria") (text "−")
  (proc 15)
  (set-reg 891 #f)
  (set-reg 892 #f)
  (set-reg 893 #f)
  (set-reg 894 #t)
  (set-reg 899 #f)
  (set-var B 4)
  (set-var C 4)
  (proc 19)
  (exec-mem 18944 65535 528 23)
  
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
           (// (? (= 13 #t))           (nop@) (set-var T 0) (set-var O 4) (seg-call))    ; (set-reg 16 #t)
           (// (? (= 12 #t) (= 13 #f)) (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 11 #t) (= 12 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 15 #t)
           (// (? (= 10 #t) (= 11 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 14 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 16 #t))           (nop@) (set-var T 2) (set-var O 5) (seg-call))    ; (mes-jump "b:¥mes¥ns14_01.mes")
           (// (? (= 12 #t) (= 16 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (set-reg 13 #t)
           (// (? (= 15 #t) (= 12 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 12 #t)
           (// (? (= 11 #t) (= 15 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 14 #t) (= 11 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 11 #t)
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 10 #t)
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
     (/ (nop@))))
   (exec-mem 24576 3)))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))												; Think
   (proc 18)
   (text-color 7)
   (str "The A Lunch is really good! How is it this good," 'br)
   (str "seriously? They should absolutely add it to the" 'br)
   (str "main menu!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Next weekend!? It's out of the question! I am not" 'br)
   (str "going on a business trip, no matter what!")
   (proc 15)
   (proc 19)
   (set-reg 14 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "This isn't good... Even if I explain it to Doc" 'br)
   (str "Akiba, he won't get it...")
   (proc 15)
   (text-color 7)
   (str "The very value of this ticket...")
   (proc 15)
   (text-color 7)
   (str "But still... If I don't explain things somehow," 'br)
   (str "with Doc's authority, my paid leave might get" 'br)
   (str "cancelled...")
   (proc 15)
   (proc 19)
   (set-reg 15 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "What incredible luck! I can get the drivers'" 'br)
   (str "autographs, and if I luck out, I can even watch" 'br)
   (str "from the pit!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "Kirara doesn't even know what F1 is... She's" 'br)
   (str "totally a fossil... I'll have to teach her for" 'br)
   (str "her own good.")
   (proc 15)
   (proc 19)
   (set-reg 16 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This is the Dentendo staff cafeteria. I'm having" 'br)
   (str "the A Lunch, Kirara's having the B as always, Doc" 'br)
   (str "is having katsudon...")
   (proc 15)
   (text-color 7)
   (str "And Croco is having a banana. Bananas are a highly")
   (str "nutritious health food!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Tanchi, are you available for a short" 'br)
   (str "business trip from Friday to Sunday next week?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "A business trip? But next week's schedule" 'br)
   (str "is...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Wait just a minute here! I signed up for" 'br)
   (str "paid vacation from Friday to Sunday!")
   (proc 15)
   (proc 19)
   (set-reg 10 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Well, I think it's important that you" 'br)
   (str "go.")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "No, no way! Absolutely not!")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "What in heaven's name is wrong?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Even if a patient with a stomach ulcer got")
   (str "peritonitis, intestinal obstruction and pneumonia,")
   (str "I won't go!")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Mmmmm. What order of business could" 'br)
   (str "possibly be more important than that?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Well, uh...")
   (proc 15)
   (proc 19)
   (set-reg 11 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "What is it? Can you not explain?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Er, I'm going to the F1 Japan Grand" 'br)
   (str "Prix... I finally managed to snag a ticket...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Ah, so that's the case, it can't be" 'br)
   (str "helped...")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "I'm sorry about that... Ha ha ha ha...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "If that's the case, then Kirara, Croco,")
   (str "and I will just go to Suzuka ourselves...")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "S-Suzuka!?")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Yes, we're attending the F1 Japan GP as")
   (str "the team doctors.")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "I'M GOING!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Even if a terminal cancer patient falls in")
   (str "a ditch, I'm going, I'm going, I'm going! So what" 'br)
   (str "team is it?")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "It's Moguri Suzuki's Bootwork team.")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "I see... That's why you picked me...")
   (proc 15)
   (proc 19)
   (set-reg 12 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 11) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "So like, what's an F One?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "You... You don't know anything about F1?")
   (proc 15)
   (proc 11) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Is this like #####'s MI card?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 13 #t))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "F1 is the highest class of formula car" 'br)
   (str "racing. Each year, they fight for the world" 'br)
   (str "championship over 16 races.")
   (proc 15)
   (proc 11) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Ch, Chum, Chump-ion?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "And at this year's Japan GP, Moguri Suzuki")
   (str "might be the first Japanese world champion!")
   (proc 15)
   (proc 11) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Is that good? Is this Manky Suzuki person" 'br)
   (str "important?")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 2)
       ; Tanchi:
           (str "Arrrgh, this is painful... But yes! The" 'br)
   (str "dude is amazing!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4) ; Portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "And if that amazing person chose Tanchi," 'br)
   (str "that means you're even MORE amazing!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Hahaha, well, Tanchi and Moguri are" 'br)
   (str "slightly acquainted.")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Please don't bring up the old days...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "There's no shame in hiding it, is" 'br)
   (str "there?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "No, dude, seriously, stop!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns14_01.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1)
   (str "Yoink!")
   (proc 15)
   (text-color 7)
   (str "I grab one of Croco's bananas.")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 0 192 10 96") (proc 4) ; Croco portrait
   (text-color 11)
   (str "Croco: Waninininini!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I'm not done eating yet! They say you'll go blind" 'br)
   (str "if you waste food!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 4)
   (set-var C 4)))
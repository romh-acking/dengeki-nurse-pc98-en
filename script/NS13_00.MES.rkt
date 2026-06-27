; Dengeki Nurse English Translation - NS13_00.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; At the cafeteria again. Kirara fights for worker's rights.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 11) (str "Croco: ")))

; 	Character portraits:

  (define-proc 9  (<> (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4))) ; Sad
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4))) ; Angry

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
; (sound '|se | "NRS_ADV.SE") (sound '|| 100)
  ((cmd 209) 1 5)
  (exec-file "APPEARH.CMD b:¥gpc¥3WA.gpc,2,109,76,250,4,1,1")
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
  (image-file "gpc¥Aflame01.gpc")   (image-mem 1 3)
  (image-file "gpc¥ns1_K10.gpc")    (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_301.gpc") (image-mem 1 3)
  (exec-mem 18944 1 19200)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 0 799)
  (text #:col 1 'br)
  (text "　　　−") (str "Dentendo Hospital Staff Cafeteria") (text "−")
  (proc 15)
  (proc 19)
  (set-reg 891 #f)
  (set-reg 892 #f)
  (set-reg 893 #t)
  (set-reg 894 #f)
  (set-reg 898 #f)
  (set-var B 4)
  (set-var C 4)
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
           (// (? (= 11 #t))                     (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 15 #t)
           (// (? (= 10 #t) (= 11 #f))           (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 14 #t)
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 12 #t)
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 15 #t))                     (nop@) (set-var T 2) (set-var O 5) (seg-call))    ; (mes-jump "b:¥mes¥ns13_01.mes")
           (// (? (= 11 #t) (= 15 #f))           (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 14 #t) (= 11 #f))           (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 11 #t)
           (// (? (= 10 #t) (= 14 #f))           (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 12 #t) (= 13 #t) (= 10 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 10 #t)
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 13 #t)
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
   (str "The heat wave just keeps going. People make a big" 'br)
   (str "deal about summer vacation and the annual Obon," 'br)
   (str "but that stuff doesn't matter for us medical pros.")
   (proc 15)
   (proc 19)
   (set-reg 12 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Hmm... I can understand Kirara's complaints. But" 'br)
   (str "patients can get sick on holidays...")
   (proc 15)
   (text-color 7)
   (str "Still... It'd be nice to go out and have some" 'br)
   (str "summer fun.")
   (proc 15)
   (proc 19)
   (set-reg 14 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Yeah, that's true...")
   (proc 15)
   (text-color 7)
   (str "Kirara puts on a good face, but on the inside" 'br)
   (str "she's got an unfortunate past...")
   (proc 15)
   (text-color 7)
   (str "All right, then! I'll appeal to Doc Akiba on" 'br)
   (str "Kirara's behalf!")
   (proc 15)
   (proc 19)
   (set-reg 15 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This is the Dentendo staff cafeteria. I've got the")
   (str "A lunch, Kirara went for the B, Doc Akiba's doing" 'br)
   (str "katsudon...")
   (proc 15)
   (text-color 7)
   (str "And Croco is...eating hotpot!? How can you eat" 'br)
   (str "something like that in summer!?")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 9)	; Sad
   (proc 1)
       ; Kirara:
           (str "Haaaahh...")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "What's with the sighing?")
   (proc 15)
   (proc 9)	; Sad
   (proc 1)
       ; Kirara:
           (str "Oh no, it's nothing...")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 13 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "No, you're acting weird. What's up?")
   (proc 15)
   (proc 11)	; Angry
   (proc 1)
       ; Kirara:
           (str "Doctor Akiba!")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Yes, what is it? That's a scary look" 'br)
   (str "you've got...")
   (proc 15)
   (proc 14)
   (proc 11)	; Angry
   (proc 1)
       ; Kirara:
           (str "I demand an improvement to our working" 'br)
   (str "environment!")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Wh-What's with this out of nowhere!?")
   (proc 15)
   (proc 14)
   (proc 11)	; Angry
   (proc 1)
       ; Kirara:
           (str "The whole world's excited for summer" 'br)
   (str "vacation, so why don't we get any time off" 'br)
   (str "ourselves!?")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Uh, umm...well...")
   (proc 15)
   (proc 14)
   (proc 19)
   (set-reg 10 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 11)	; Angry
   (proc 1)
       ; Kirara:
           (str "Nurses deserve a summer holiday too!")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Hmmmmm...")
   (proc 15)
   (proc 14)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "It's a good point. She's not asking for" 'br)
   (str "overseas travel, just an ocean or mountain trip" 'br)
   (str "would be nice.")
   (proc 15)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "The problem is... We have quite the" 'br)
   (str "nurse shortage around here.")
   (proc 15)
   (proc 14)
   (proc 9)	; Sad
   (proc 1)
       ; Kirara:
           (str "And actually... I want to search for my" 'br)
   (str "mother, but I can't even make time for that...")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Hmmm...")
   (proc 15)
   (proc 14)
   (proc 19)
   (set-reg 11 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 9)	; Sad
   (proc 1)
       ; Kirara:
           (str "Sniff, sniff... I guess nursing really" 'br)
   (str "does exemplify the three Ds...")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara's right, even with a staff shortage")
   (str "we're suffering way too much!")
   (proc 15)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "Fine, fine, fine! All of us can head to")
   (str "the beach this Sunday!")
   (proc 15)
   (proc 14)
   (proc 3)
   (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "Yay!!! You see, Croco-chan? It does pay" 'br)
   (str "off to let your feelings be heard!")
   (proc 15)
   (proc 6)
   (proc 3)
   (exec-mem 2816 "GET 2 0 192 10 96") ; Croco
   (proc 4)
   (proc 10)
          (str "Waniiiiii!!")
   (proc 15)
   (proc 6)
   (proc 12) (proc 13)
   (proc 5)
       ; Dr. Akiba:
              (str "...Somehow I feel like I've been" 'br)
   (str "tricked into something...")
   (proc 15)
   (proc 14)
   (proc 2)
       ; Tanchi:
           (str "Well, it's a good thing, isn't it? We" 'br)
   (str "should refresh ourselves once in a while.")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns13_01.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Some people think it's best to exercise after" 'br)
   (str "eating.")
   (proc 15)
   (text-color 7)
   (str "Big mistake, medically speaking post-meal exercise")
   (str "is bad for the body!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "Hey now, if you wander around after eating the" 'br)
   (str "digestive process will get all confused. It's one" 'br)
   (str "of the great mysteries of modern medicine...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 3)
   (set-var C 3)))
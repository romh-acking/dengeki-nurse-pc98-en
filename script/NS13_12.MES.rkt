; Dengeki Nurse English Translation - NS13_12.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Our hero (and Tanchi) make it out to a beach, where a lone surfer yearns...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 5) (str "Surfer Lady: ")))

; 	Character portraits:

  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4))) ; Shocked
  (define-proc 12 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused
  (define-proc 13 (<> (proc 3) (exec-mem 2816 "GET 2 70 0 10 96") (proc 4))) ; Flushed

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse12.uso")
; FMT
; (sound '|| "Nurse12.fmt") (sound '|| 100)
  (sound '|| 1)
  (image-file "gpc¥Aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0 0)
  (image-file "b:¥gpc¥Ns1_333.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 1 0)
; PC-98
  (exec-mem 17920 0 1) (exec-mem 6656 8)
; FMT
; (branch-reg 311 (</> (/ ((cmd 209) 1 3)) (/ (exec-mem 17920 0 1) (set-reg 311 #f))))
  ((cmd 204) 99 104)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "Kirara and I chased the bunch of them to the" 'br)
  (str "coast.")
  (proc 15)
  (text-color 7)
  (str "How much time has passed? The sun sure is blazing" 'br)
  (str "down on us...")
  (proc 15)
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
           (// (? (= 100 #t))            (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 104 #t)
           (// (? (= 99 #t) (= 100 #f))  (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 103 #t)
           (//                           (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 99 #t))             (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 101 #t) (= 99 #f))  (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 99 #t)
           (//                           (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 104 #t))            (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (mes-jump "b:¥mes¥ns13_13.mes")
           (// (? (= 100 #t) (= 104 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 103 #t) (= 100 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 100 #t)
           (// (? (= 102 #t) (= 103 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 101 #t)
           (//                           (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 102 #t)
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
   (str "Damn, they're speedy as hell! Just where did they" 'br)
   (str "get to?")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Wait! Maybe this lady saw 'em!")
   (proc 15)
   (proc 19)
   (set-reg 103 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Maybe they escaped into the ocean...")
   (proc 15)
   (text-color 7)
   (str "There's no way I could swim after them... I" 'br)
   (str "haven't got the stamina to catch up.")
   (proc 15)
   (proc 19)
   (set-reg 104 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "The waves are calm and we have good weather...")
   (proc 15)
   (text-color 7)
   (str "But no time for that!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "There's a surfer-looking lady here. She looks a" 'br)
   (str "bit older, but she doesn't seem to be your typical")
   (str "beach bum.")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "It's coming... It's definitely" 'br)
   (str "coming...")
   (proc 15)
   (proc 11) ; Portrait (Shocked)
   (proc 0)
       ; Dengeki Nurse:
                  (str "What is??")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 10)
       ; Surfer Lady:
                (str "Once every 19 years, the perfect wave")
   (str "arrives...")
   (proc 15)
   (proc 19)
   (set-reg 99 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "The woman gazes out to the ocean.")
   (proc 15)
   (text-color 7)
   (str "A perfect wave that comes once every 19 years?")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Shit! Where the hell did they go?")
   (proc 15)
   (proc 13) ; Portrait (Flushed)
   (proc 0)
       ; Dengeki Nurse:
                  (str "If that video gets out, I'll never" 'br)
   (str "be able to get married!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Don't worry, I'll take you regardless!")
   (proc 15)
   (proc 13) ; Portrait (Flushed)
   (proc 0)
       ; Dengeki Nurse:
                  (str "E-Eh??")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Oh, ha ha, nothing...")
   (proc 15)
   (proc 19)
   (set-reg 102 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Anyway, which way did they go?")
   (proc 15)
   (proc 12) ; Portrait (Confused)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I'm not seeing them... Where" 'br)
   (str "indeed?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 101 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Er, excuse me...")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "What do you want?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Did you see a real skeezy pervert around" 'br)
   (str "here wearing duck pattern underwear?")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "That weirdo shoved off a little while")
   (str "ago.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Shit, they got away, then!")
   (proc 15)
   (proc 12) ; Portrait (Confused)
   (proc 0)
       ; Dengeki Nurse:
                  (str "What do we do!?" 'br)
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 100 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 12) ; Portrait (Confused)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Tanchi, what should we do...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Hmm...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Since it's the ocean and all... It's not" 'br)
   (str "like we can go after them on foot.")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "Do you two need something? If you" 'br)
   (str "like, you can borrow my jetski over there.")
   (proc 15)
   (proc 11) ; Portrait (Shocked)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Ehh, for real!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 10)
       ; Surfer Lady:
                (str "Yeah, go all-out... You can even use" 'br)
   (str "my board if you want.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Geez lady, why're you being so nice to" 'br)
   (str "strangers like us?")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "You two remind me of my younger" 'br)
   (str "days... Ah, but's that's just me getting all" 'br)
   (str "sentimental.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Thanks a lot, I promise we'll make the" 'br)
   (str "most we can of this!")
   (proc 15)
   (proc 10)
       ; Surfer Lady:
                (str "Don't get yourselves killed, now.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Come on, Kirara, we're hitting the waves!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 0 0 10 96") (proc 4) ; Portrait (Smiling)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You bet!")
   (proc 15)
   ((cmd 209) 0 2)
   (exec-mem 2816 "EXIT")
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns13_13.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I might have gotten a little too aroused" 'br)
   (str "earlier...")
   (proc 15)
   (text-color 7)
   (str "I don't feel like touching her butt...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "Hey, you shouldn't go to pee in the ocean...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 5) (str "Surfer Lady: ")))
   (proc 19)
   (set-var B 3)
   (set-var C 3)))